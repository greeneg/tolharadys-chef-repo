name 'networking'
maintainer 'Gary Greene'
maintainer_email 'greeneg@tolharadys.net'
license 'Apache-2.0'
description 'Installs/Configures networking'
version '0.1.0'
chef_version '>= 16.0'

# The `issues_url` points to the location where issues for this cookbook are
# tracked.  A `View Issues` link will be displayed on this cookbook's page when
# uploaded to a Supermarket.
#
# issues_url 'https://github.com/<insert_org_here>/networking/issues'

# The `source_url` points to the development repository for this cookbook.  A
# `View Source` link will be displayed on this cookbook's page when uploaded to
# a Supermarket.
#
# source_url 'https://github.com/<insert_org_here>/networking'

depends 'avahi_daemon'
