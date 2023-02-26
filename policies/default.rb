name "default"

run_list [
  "authentication::default",
  "mounts::default",
  "networking::default",
  "packages::default",
  "security::default",
  "services::default"
]

default_source :chef_repo, '/etc/cinc/code'
