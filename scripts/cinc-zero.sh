#!/bin/bash

set -e
set -u
set -o pipefail

function update_cookbook_code {
  echo "INFO: Updating code repository"
  cd /etc/cinc/code
  git pull
  cd -
}

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

echo "INFO: Entering working directory"
if [[ "$(get_os_family)" == 'debian' ]]; then
  if [[ ! -d /var/empty ]]; then
    install -d -m 755 -o root -g root /var/empty
  fi
  cd /var/empty
else
  cd /var/lib/empty
fi

# get the code repo
if [[ "$(get_os_family)" == 'sles' ]]; then
  . /etc/sysconfig/cinc
else
  . /etc/default/cinc
fi

echo "INFO: Determining Environment"
FQDN="$(hostname --fqdn)"
if [[ -f "${CINC_CODE_REPO}/node_assignments/${FQDN}.json" ]]; then
  CINC_ENVIRONMENT=$(jq -r .environment "${CINC_CODE_REPO}/node_assignments/${FQDN}.json")
else
  echo "ERROR: machine not registered! Exiting"
  exit 2
fi

echo "INFO: Determining Roles"
MY_ROLES=
for ROLE in $(jq -r .roles[] "${CINC_CODE_REPO}/node_assignments/${FQDN}.json"); do
  MY_ROLES+="role[$ROLE],"
done
if [[ "${#MY_ROLES[@]}" -eq 0 ]]; then
  echo "ERROR: No Roles are assigned to machine! Exiting"
  exit 2
fi

echo "INFO: Executing CinC run"
cd $CINC_CODE_REPO
/opt/cinc/bin/cinc-client -z -c /etc/cinc/client.rb -P /run/cinc-zero.pid -E "$CINC_ENVIRONMENT" -l info -r "${MY_ROLES}"

echo "INFO: CinC run completed"
