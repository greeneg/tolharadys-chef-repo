#!/bin/bash

set -e
set -u
set -o pipefail

if [[ "$EUID" -ne 0 ]]; then
  echo "Must be run with administrative rights. Exiting"
  exit 1
fi

function get_os_family {
    if [[ -f /etc/os-release ]]; then
        # a linux of some sort.
        # currently, I only care about openSuSE or Debian
        if grep -qE "^ID=\"opensuse\-leap\"$" /etc/os-release; then
            echo "sles"
        elif grep -qE "^ID=debian$" /etc/os-release; then
            echo "debian"
        fi
    fi
}

function get_os_series {
    OS_FAMILY=$(get_os_family)

    V_ID=$(grep -E "^VERSION_ID.*$" /etc/os-release | cut -f 2 -d"=" | sed -e "s/\"//g")
    if [[ "${OS_FAMILY}" == "debian" ]]; then
        # debian doesn't use dots in their VERSION_ID
        echo $V_ID
    elif [[ "${OS_FAMILY}" == "sles" ]]; then
        # SUSE and openSUSE use a major . minor ID. We only need the major version
        echo $V_ID | cut -f 1 -d '.'
    fi
}

function get_hw_arch {
    OS_FAMILY=$(get_os_family)

    if [[ $(arch) == "x86_64" && "$OS_FAMILY" == "debian" ]]; then
        echo "amd64"
    elif [[ $(arch) == "x86_64" && "$OS_FAMILY" == "sles" ]]; then
        arch
    fi
}

function check_deps {
    if [[ ! -x /usr/bin/jq ]]; then
        if [[ "${OS_FAMILY}" == "sles" ]]; then
            zypper --non-interactive --no-color --terse in jq
        elif [[ "${OS_FAMILY}" == "debian" ]]; then
            apt-get -y install jq
        fi
    fi
}

function usage {
    local str_length
    local title

    title="$(basename $0): - A tool to get the latest version of CINC"
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
    echo " -g | --git-url GIT_URL    The URL to clone the Chef/CINC configuration code"
    echo "                           from"
    echo " -h | --help               Display this help output"
    echo " -v | --version            Display the version of this tool"
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

function check_is_git_url {
}

function process_args {
    # using gnu getopt, not bash's built in
    getopt -T || retval=$?
    if [[ $retval -ne 4 ]]; then
        echo "Unknown version of getopt! Cannot continue. Exiting" && exit 1
    fi

    TEMP=$(getopt -o g:hv: --long git-url:,help,version -n 'register-host' -Qq -- "$@") || retval=$?

    # now lets process the arguments
    eval $(set -- "$TEMP")
    unset TEMP

    while [[ $# -gt 0 ]]; do
        case "$1" in
            -g | --git-url)
                git_arg=${2:-}
                if [[ -n "$git_arg" ]]; then
                    # test if this is a real git URL
                    check_is_git_url $git_arg
                    GIT_URL=${git_arg} && shift 2 && continue # full URL for the git repo
                else
                    echo "The '-g' flag requires a URL string!"
                    usage
                    exit 1
                fi
                break
            ;;
            -h | --help)
                usage && exit 0
            ;;
            -v | --version)
                echo "Version $VERSION" && exit 0
            ;;
            --)
                shift && break
            ;;
            *)
                echo "Invalid argument! Argument '$1' unknown!"
                usage
                exit 1
            ;;
        esac
    done
}

# argument vars
GIT_URL=

# globals
VERSION="1.0.0"
CA_API_URL="http://downloads.cinc.sh/api/v1/stable/cinc-auditor/versions"
CA_FILES_BASE_URL="http://downloads.cinc.sh/files/stable/cinc-auditor"
CINC_API_URL="http://downloads.cinc.sh/api/v1/stable/cinc/versions"
CINC_FILES_BASE_URL="http://downloads.cinc.sh/files/stable/cinc"

process_args "$@"

exit $?

# first, get the latest version of
CA_VERSION_JSON=$(curl -s $CA_API_URL)
CA_BUILD_NUM=$(echo $CA_VERSION_JSON | jq -r '. | .[] | last | .artifacts[].builds[] | ."build.number"')
CINC_VERSION_JSON=$(curl -s $CINC_API_URL)
CINC_BUILD_NUM=$(echo $CINC_VERSION_JSON | jq -r '. | .[] | last | .artifacts[].builds[] | ."build.number"')

OS_FAMILY=$(get_os_family)
OS_SERIES=$(get_os_series)
HW_ARCH=$(get_hw_arch)

_tmpdir=$(mktemp -d)
cd $_tmpdir

# download auditor
echo "Downloading CINC Auditor version $CA_BUILD_NUM for $OS_FAMILY series $OS_SERIES for $HW_ARCH architecture"
if [[ "${OS_FAMILY}" == "sles" ]]; then
    curl -q --progress-bar -O "${CA_FILES_BASE_URL}/${CA_BUILD_NUM}/${OS_FAMILY}/${OS_SERIES}/cinc-auditor-${CA_BUILD_NUM}-1.${OS_FAMILY}${OS_SERIES}.${HW_ARCH}.rpm"
elif [[ "${OS_FAMILY}" == "debian" ]]; then
    curl -q --progress-bar -O "${CA_FILES_BASE_URL}/${CA_BUILD_NUM}/${OS_FAMILY}/${OS_SERIES}/cinc-auditor_${CA_BUILD_NUM}-1_${HW_ARCH}.deb"
fi

echo
# download cinc
echo "Downloading CINC Client version $CINC_BUILD_NUM for $OS_FAMILY series $OS_SERIES for $HW_ARCH architecture"
if [[ "${OS_FAMILY}" == "sles" ]]; then
    curl -q --progress-bar -O "${CINC_FILES_BASE_URL}/${CINC_BUILD_NUM}/${OS_FAMILY}/${OS_SERIES}/cinc-${CINC_BUILD_NUM}-1.${OS_FAMILY}${OS_SERIES}.${HW_ARCH}.rpm"
elif [[ "${OS_FAMILY}" == "debian" ]]; then
    curl -q --progress-bar -O "${CINC_FILES_BASE_URL}/${CINC_BUILD_NUM}/${OS_FAMILY}/${OS_SERIES}/cinc_${CINC_BUILD_NUM}-1_${HW_ARCH}.deb"
fi

echo "Installing packages..."
if [[ "${OS_FAMILY}" == "sles" ]]; then
    rpm -Uvh *.rpm
elif [[ "${OS_FAMILY}" == "debian" ]]; then
    dpkg -i *.deb
fi

rm -rf $_tmpdir

# prep system
if [[ "${OS_FAMILY}" == 'sles' ]]; then
  echo 'CINC_CODE_REPO=/etc/cinc/code' > /etc/sysconfig/cinc
elif [[ "${OS_FAMILY}" == 'debian' ]]; then
  echo 'CINC_CODE_REPO=/etc/cinc/code' > /etc/default/cinc
fi

install -v -d -m 755 -o root -g root /etc/cinc
