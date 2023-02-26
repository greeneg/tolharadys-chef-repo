default['packages']['opensuse']['15.4']['desktop']['repositories'] = [
    'obs_-_Artwork:Wallpapers',
    'obs_-_Emulators',
    'obs_-_Games',
    'obs_-_Games:Tools',
    'obs_-_Graphics',
    'obs_-_KDE:Applications',
    'obs_-_KDE:Extra',
    'obs_-_KDE:Frameworks5',
    'obs_-_KDE:Qt5',
    'obs_-_LibreOffice:Factory',
    'obs_-_Mozilla',
    'obs_-_Multimedia:Applications',
    'obs_-_Multimedia:Libraries',
    'obs_-_Network:IM:Signal',
    'obs_-_Office',
    'obs_-_Publishing',
    'obs_-_Science',
    'obs_-_Security:KeePassXC',
    'obs_-_X11:Utilities',
    'obs_-_X11:XOrg',
    'third_party_-_Google_Chrome',
    'third_party_-_Microsoft:Edge',
    'third_party_-_Microsoft:Teams',
    'third_party_-_packman',
    'third_party_-_Skype-Stable',
    'third_party_-_Slack',
    'third_party_-_Teamviewer',
    'third_party_-_VLC',
    'third_party_-_Vivaldi'
]
default['packages']['opensuse']['15.4']['virtualization']['repositories'] = [
    'obs_-_Virtualization',
    'obs_-_Virtualization:Containers',
    'obs_-_Virtualization:Vagrant',
    'obs_-_Virtualization:VirtualBox'
]
default['packages']['opensuse']['15.4']['development_workstation']['repositories'] = [
    'obs_-_Devel:Languages:Go',
    'obs_-_Devel:Languages:NodeJS',
    'obs_-_Devel:Languages:Perl',
    'obs_-_Devel:Languages:Python',
    'obs_-_Devel:Languages:Ruby',
    'obs_-_Devel:Languages:Ruby:Extensions',
    'obs_-_Devel:Tools',
    'third_party_-_VSCode',
]
default['packages']['opensuse']['15.4']['nameserver']['repositories'] = [
    'obs_-_Server:DNS',
]
default['packages']['opensuse']['15.4']['webserver']['repositories'] = [
    'obs_-_Server:HTTP',
    'obs_-_Server:PHP:Applications',
    'obs_-_Server:PHP:Extensions'
]
default['packages']['opensuse']['15.4']['database_server']['repositories'] = [
    'obs_-_Server:Database',
    'obs_-_Server:Database:PostgreSQL'
]
default['packages']['opensuse']['15.4']['mailserver']['repositories'] = [
    'obs_-_Server:Mail'
]
default['packages']['opensuse']['15.4']['printserver']['repositories'] = [
    'obs_-_Printing'
]
default['packages']['opensuse']['15.4']['proxyserver']['repositories'] = [
    'obs_-_Server:Proxy'
]
default['packages']['opensuse']['15.4']['monitoringserver']['repositories'] = [
    'obs_-_Server:Monitoring'
]
default['packages']['opensuse']['15.4']['securityhardening']['repositories'] = [
    'obs_-_Security:Forensics',
    'obs_-_Security:Logging',
    'obs_-_Security:Privacy',
    'obs_-_Security:Stunnel'
]
default['packages']['opensuse']['15.4']['firewall']['repositories'] = [
    'obs_-_Security:NetFilter',
]
default['packages']['opensuse']['15.4']['extended']['repositories'] = [
    'obs_-_Archiving',
    'obs_-_Editors',
    'obs_-_Filesystems',
    'obs_-_Hardware',
    'obs_-_Kernel:HEAD:Backport:KMP:Standard',
    'obs_-_Kernel:HEAD:Backport:Standard',
    'obs_-_Kernel:Tools',
    'obs_-_Network',
    'obs_-_Network:IDM',
    'obs_-_Network:LDAP',
    'obs_-_Network:Utilities',
    'obs_-_Security',
    'obs_-_Security:AppArmor',
    'obs_-_Security:IDM',
    'obs_-_Security:SELinux',
    'obs_-_Shells',
    'obs_-_Shells:Zsh-users:Antigen',
    'obs_-_Shells:Zsh-users:zsh-autosuggestions',
    'obs_-_Shells:Zsh-users:zsh-completions',
    'obs_-_Shells:Zsh-users:zsh-history-substring-search',
    'obs_-_Shells:Zsh-users:zsh-syntax-highlighting',
    'obs_-_System:PackageManager',
    'obs_-_SystemManagement',
    'obs_-_Utilities',
    'obs_-_YaST:Head',
    'obs_-_Zypp:Head',
    'third_party_-_Microsoft:Software:prod'
]
default['packages']['opensuse']['15.4']['core']['repositories'] = [
    'main-non-oss',
    'main-non-oss_-_updates',
    'main-oss',
    'main-oss_-_updates',
    'repo-backports-update',
    'repo-sle-update.repo'
]
default['packages']['opensuse']['15.4']['repo']['main-oss'] = {
    'name' => 'main-oss',
    'description' => 'Main OSS Repository',
    'enabled' => 1,
    'autorefresh' => 1,
    'path' => '/',
    'type' => 'rpm-md',
    'priority' => 98,
    'keeppackages' => 0,
    'url' => 'http://download.opensuse.org/distribution/leap/15.4/repo/oss/',
    'file_name' => 'main-oss.repo'
}
default['packages']['opensuse']['15.4']['repo']['main-oss_-_updates'] = {
    'name' => 'main-oss-updates',
    'description' => 'Main OSS Update Repository',
    'enabled' => 1,
    'autorefresh' => 1,
    'path' => '/',
    'type' => 'rpm-md',
    'priority' => 95,
    'keeppackages' => 0,
    'url' => 'http://download.opensuse.org/update/leap/15.4/oss',
    'file_name' => 'main-oss_-_updates.repo'
}
default['packages']['opensuse']['15.4']['repo']['main-non-oss'] = {
    'name' => 'main-non-oss',
    'description' => 'Main Non-OSS Repository',
    'enabled' => 1,
    'autorefresh' => 1,
    'path' => '/',
    'type' => 'rpm-md',
    'priority' => 98,
    'keeppackages' => 0,
    'url' => 'http://download.opensuse.org/distribution/leap/15.4/repo/non-oss/',
    'file_name' => 'main-non-oss.repo'
}
default['packages']['opensuse']['15.4']['repo']['main-non-oss_-_updates'] = {
    'name' => 'main-non-oss-updates',
    'description' => 'Main Non-OSS Updates Repository',
    'enabled' => 1,
    'autorefresh' => 1,
    'path' => '/',
    'type' => 'rpm-md',
    'priority' => 95,
    'keeppackages' => 0,
    'url' => 'http://mirrors.kernel.org/opensuse/update/leap/15.4/non-oss/',
    'file_name' => 'main-non-oss_-_updates.repo'
}
default['packages']['opensuse']['15.4']['repo']['repo-backports-update'] = {
    'name' => 'repo-backports-update',
    'description' => 'Update repository of openSUSE Backports',
    'enabled' => 1,
    'autorefresh' => 1,
    'path' => '/',
    'type' => 'rpm-md',
    'priority' => 93,
    'keeppackages' => 0,
    'url' => 'http://download.opensuse.org/update/leap/$releasever/backports/',
    'file_name' => 'repo-backports-update.repo'
}
default['packages']['opensuse']['15.4']['repo']['repo-sle-update'] = {
    'name' => 'repo-sle-update',
    'description' => 'Update repository with updates from SUSE Linux Enterprise 15',
    'enabled' => 1,
    'autorefresh' => 1,
    'path' => '/',
    'type' => 'rpm-md',
    'priority' => 93,
    'keeppackages' => 0,
    'url' => 'http://download.opensuse.org/update/leap/$releasever/sle/',
    'file_name' => 'repo-sle-update.repo'
}
