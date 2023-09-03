#!/bin/bash

set -e
set -u
set -o pipefail

ENVIRONMENT=
HOST_FQDN=
ROLES=
WORKSPACE=

VERSION="1.0.0"

function check_deps {
    # check if jq exists, otherwise, exit with ENOENT
    which jq 2>&1 >/dev/null || (echo "Missing JQ. Please install. Exiting" && exit 2)
    # check if getopt exists, otherwise, exit with ENOENT
    which getopt 2>&1 >/dev/null || (echo "Missing GNU getopt. Please install. Exiting" && exit 2)
    # check if hostname is installed
    which hostname 2>&1 >/dev/null || (echo "Missing hostname command. Please install. Exiting" && exit 2)
}

function usage {
    local str_length
    local title

    title="$(basename $0): - A tool to register a machine with the local CINC repository"
    str_length=$(echo $title | wc -c)
    echo $title
    echo $(printf '=%.0s' $(seq 1 $((str_length - 1))))
    echo
    echo "USAGE:"
    echo "------"
    echo "$(basename $0) [OPTIONS]"
    echo
    echo "OPTIONS:"
    echo "--------"
    echo " -h | --help               Display this help output."
    echo " -v | --version            Display the version of this tool."
    echo " -e ENVIRONMENT            Set the environment the machine will be part of."
    echo "                           Usually, this would be 'dev', 'qa', or 'prod'. This"
    echo "                           takes a single value."
    echo " -n NODE                   The machine's fully qualified hostname to use for"
    echo "                           registration."
    echo " -r ROLES                  Comma delimited list of roles to assign to the"
    echo "                           machine."
    echo " -w WORKSPACE_PATH         The full path to the CINC code on the local host."
    echo
    echo "Licensed under the Apache License, Version 2.0 (the \"License\");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an \"AS IS\" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
"
}

function process_args {
    # using gnu getopt, not bash's built in
    getopt -T || retval=$?
    if [[ $retval -ne 4 ]]; then
        echo "Unknown version of getopt! Cannot continue. Exiting" && exit 1
    fi

    TEMP=$(getopt -o e:n:r:w:hv --long environment:,hostname:,roles:,workspace:,help,version -n 'register-host' -- "$@")

    # now lets process the arguments
    eval set -- "$TEMP"

    while true; do
        case "$1" in
            -h | --help)
                usage && exit 0 ;;
            -v | --version) echo "Version $VERSION";;
            -e) ENVIRONMENT=${2} && shift 2 ;; # environment is a single value
            -n) HOST_FQDN=${2} && shift 2 ;; # optional hostname for node to be assigned
            -r) ROLES=${2} && shift 2 ;; # roles are a comma delimited string that is passed as a single argument
            -w) WORKSPACE=${2} && shift 2 ;; # workspace is the directory where the git repo for the chef/cinc code lives
            --) shift && break ;;
            *)  break ;;
        esac
    done
}

function create_json_file {
    local host_fqdn
    local json_text
    local _tempfile
    local cleaned_ws

    if [[ -z "$HOST_FQDN" ]]; then
        host_fqdn=$(hostname --fqdn)
    else
        host_fqdn=${HOST_FQDN}
    fi

    # clean off any trailing /
    cleaned_ws=$( sed -e 's/\/$//' <<<${WORKSPACE} )

    _tempfile=$(mktemp)

    # create our empty json object in our temp file
    json_text='{}'

    # now inject our environment to the file
    json_text=$( jq -n ". += {\"environment\":\"${ENVIRONMENT}\"}" <<<$json_text )

    # finally, put the roles in the temporary file
    json_text=$( jq -M --arg var "$ROLES" '. += {"roles": ($var|split(","))}' <<<$json_text )

    # write to temp file
    echo $json_text > $_tempfile

    # move into place
    mv $_tempfile "${WORKSPACE}/node_assignments/${host_fqdn}.json"

    # show what was created
    echo -n "FILE        -> "
    ls -l "${WORKSPACE}/node_assignments/${host_fqdn}.json"
    echo -n "CONTENTS    -> "
    cat "${WORKSPACE}/node_assignments/${host_fqdn}.json"
}

function main {
    check_deps
    process_args "$@"
    echo "ENVIRONMENT -> ${ENVIRONMENT}"
    echo "ROLES       -> $ROLES"
    echo "HOSTNAME    -> $HOST_FQDN"
    echo "WORKSPACE   -> $WORKSPACE"

    # now that args and dependencies are checked, create the JSON
    create_json_file
}

main "$@"
