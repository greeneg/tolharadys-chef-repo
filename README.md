# Overview

This is the tolharadys.net Chef Repository. This is the place where cookbooks,
role templates, config file templates and other artifacts for managing systems
with Chef will live for machines in the tolharadys.net environment.

# Repository Directories

This repository contains several directories, and each directory contains a
README file that describes what it is for in greater detail, and how to use it
for management with Chef.

- `cookbooks/` - Cookbooks that have been downloaded or created.
- `data_bags/` - Store data bags and items in .json in the repository.
- `roles/` - Store roles in .rb or .json in the repository.
- `environments/` - Store environments in .rb or .json in the repository.

Most of the json data is actually in ERB templates and processed from key/value
data stored in the tolharadys.net EtcD service.
