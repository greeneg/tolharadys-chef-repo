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
    'repo-sle-update'
]
default['packages']['opensuse']['15.4']['repo']['main-oss'] = {
    'autorefresh' => 0,
    'description' => 'Main OSS Repository',
    'enabled' => 1,
    'gpgcheck' => 0,
    'gpgkey' => '',
    'keeppackages' => 0,
    'name' => 'main-oss',
    'priority' => 98,
    'type' => 'rpm-md',
    'url' => 'http://download.opensuse.org/distribution/leap/15.4/repo/oss/',
    'file_name' => 'main-oss.repo'
}
default['packages']['opensuse']['15.4']['repo']['main-oss_-_updates'] = {
    'autorefresh' => 0,
    'description' => 'Main OSS Update Repository',
    'enabled' => 1,
    'gpgcheck' => 0,
    'gpgkey' => '',
    'keeppackages' => 0,
    'name' => 'main-oss-updates',
    'priority' => 95,
    'type' => 'rpm-md',
    'url' => 'http://download.opensuse.org/update/leap/15.4/oss',
    'file_name' => 'main-oss_-_updates.repo'
}
default['packages']['opensuse']['15.4']['repo']['main-non-oss'] = {
    'autorefresh' => 0,
    'description' => 'Main Non-OSS Repository',
    'enabled' => 1,
    'gpgcheck' => 0,
    'gpgkey' => '',
    'keeppackages' => 0,
    'name' => 'main-non-oss',
    'priority' => 98,
    'type' => 'rpm-md',
    'url' => 'http://download.opensuse.org/distribution/leap/15.4/repo/non-oss/',
    'file_name' => 'main-non-oss.repo'
}
default['packages']['opensuse']['15.4']['repo']['main-non-oss_-_updates'] = {
    'autorefresh' => 0,
    'description' => 'Main Non-OSS Updates Repository',
    'enabled' => 1,
    'gpgcheck' => 0,
    'gpgkey' => '',
    'keeppackages' => 0,
    'name' => 'main-non-oss-updates',
    'priority' => 95,
    'type' => 'rpm-md',
    'url' => 'http://mirrors.kernel.org/opensuse/update/leap/15.4/non-oss/',
    'file_name' => 'main-non-oss_-_updates.repo'
}
default['packages']['opensuse']['15.4']['repo']['repo-backports-update'] = {
    'autorefresh' => 0,
    'description' => 'Update repository of openSUSE Backports',
    'enabled' => 1,
    'gpgcheck' => 0,
    'gpgkey' => '',
    'keeppackages' => 0,
    'name' => 'repo-backports-update',
    'priority' => 93,
    'type' => 'rpm-md',
    'url' => 'http://download.opensuse.org/update/leap/$releasever/backports/',
    'file_name' => 'repo-backports-update.repo'
}
default['packages']['opensuse']['15.4']['repo']['repo-sle-update'] = {
    'autorefresh' => 0,
    'description' => 'Update repository with updates from SUSE Linux Enterprise 15',
    'enabled' => 1,
    'gpgcheck' => 0,
    'gpgkey' => '',
    'keeppackages' => 0,
    'name' => 'repo-sle-update',
    'priority' => 93,
    'type' => 'rpm-md',
    'url' => 'http://download.opensuse.org/update/leap/$releasever/sle/',
    'file_name' => 'repo-sle-update.repo'
}
default['packages']['opensuse']['15.4']['repo']['third_party_-_Google_Chrome'] = {
    'autorefresh' => 0,
    'description' => 'Third Party - Google Chrome',
    'enabled' => 1,
    'gpgcheck' => 0,
    'gpgkey' => '',
    'keeppackages' => 0,
    'name' => 'third-party-google-chrome-beta',
    'priority' => 85,
    'type' => 'rpm-md',
    'url' => 'http://dl.google.com/linux/chrome/rpm/stable/x86_64',
    'file_name' => 'third_party_-_Google_Chrome.repo'
}
default['packages']['opensuse']['15.4']['repo']['third_party_-_Microsoft:Edge'] = {
    'autorefresh' => 0,
    'description' => 'Third Party - Microsoft:Edge',
    'enabled' => 1,
    'gpgcheck' => 1,
    'gpgkey' => 'https://packages.microsoft.com/keys/microsoft.asc',
    'keeppackages' => 0,
    'name' => 'third-party-microsoft-edge',
    'priority' => 85,
    'type' => 'rpm-md',
    'url' => 'https://packages.microsoft.com/yumrepos/edge/',
    'file_name' => 'third_party_-_Microsoft:Edge.repo'
}
default['packages']['opensuse']['15.4']['repo']['third_party_-_Microsoft:Software:prod'] = {
    'autorefresh' => 0,
    'description' => 'Third Party - Microsoft:Software:Prod',
    'enabled' => 1,
    'gpgcheck' => 0,
    'gpgkey' => '',
    'keeppackages' => 0,
    'name' => 'packages-microsoft-com-prod',
    'priority' => 85,
    'type' => 'rpm-md',
    'url' => 'https://packages.microsoft.com/opensuse/15/prod',
    'file_name' => 'third_party_-_Microsoft:Software:prod.repo'
}
default['packages']['opensuse']['15.4']['repo']['third_party_-_Microsoft:Teams'] = {
    'autorefresh' => 0,
    'description' => 'Third Party - Microsoft:Teams',
    'enabled' => 1,
    'gpgcheck' => 1,
    'gpgkey' => 'https://packages.microsoft.com/keys/microsoft.asc',
    'keeppackages' => 0,
    'name' => 'third-party-teams',
    'priority' => 85,
    'type' => 'rpm-md',
    'url' => 'https://packages.microsoft.com/yumrepos/ms-teams',
    'file_name' => 'third_party_-_Microsoft:Teams.repo'
}
default['packages']['opensuse']['15.4']['repo']['third_party_-_packman'] = {
    'autorefresh' => 0,
    'enabled' => 1,
    'keeppackages' => 0,
    'priority' => 85,
    'type' => 'rpm-md',
    'url' => 'http://ftp.gwdg.de/pub/linux/misc/packman/suse/openSUSE_Leap_15.4/',
    'file_name' => 'third_party_-_packman.repo'
}
default['packages']['opensuse']['15.4']['repo']['third_party_-_puppet7'] = {
    'autorefresh' => 0,
    'enabled' => 0,
    'gpgcheck' => 1,
    'gpgkey' => 'file:/etc/pki/rpm-gpg/RPM-GPG-KEY-puppet7-release',
    'keeppackages' => 1,
    'priority' => 85,
    'type' => 'rpm-md',
    'url' => 'http://yum.puppetlabs.com/puppet7/sles/15/$basearch',
    'file_name' => 'third_party_-_puppet7.repo'
}
default['packages']['opensuse']['15.4']['repo']['third_party_-_Skype-Stable'] = {
    'autorefresh' => 0,
    'enabled' => 1,
    'keeppackages' => 0,
    'priority' => 85,
    'type' => 'rpm-md',
    'url' => 'https://repo.skype.com/rpm/stable/',
    'file_name' => 'third_party_-_Skype-Stable.repo'
}
default['packages']['opensuse']['15.4']['repo']['third_party_-_Slack'] = {
    'autorefresh' => 0,
    'enabled' => 1,
    'keeppackages' => 0,
    'priority' => 85,
    'type' => 'rpm-md',
    'url' => 'https://packagecloud.io/slacktechnologies/slack/fedora/21/x86_64',
    'file_name' => 'third_party_-_Slack.repo'
}
default['packages']['opensuse']['15.4']['repo']['third_party_-_Teamviewer'] = {
    'autorefresh' => 0,
    'enabled' => 1,
    'gpgcheck' => 1,
    'gpgkey' => 'https://linux.teamviewer.com/pubkey/currentkey.asc',
    'keeppackages' => 0,
    'priority' => 85,
    'repo_gpgcheck' => 1,
    'type' => 'rpm-md',
    'url' => 'https://linux.teamviewer.com/yum/stable/main/binary-$basearch/',
    'file_name' => 'third_party_-_Teamviewer.repo'
}
default['packages']['opensuse']['15.4']['repo']['third_party_-_Vivaldi'] = {
    'autorefresh' => 0,
    'enabled' => 1,
    'keeppackages' => 0,
    'priority' => 85,
    'type' => 'rpm-md',
    'url' => 'http://repo.vivaldi.com/archive/rpm/x86_64',
    'file_name' => 'third_party_-_Vivaldi.repo'
}
default['packages']['opensuse']['15.4']['repo']['third_party_-_VLC'] = {
    'autorefresh' => 0,
    'enabled' => 1,
    'gpgcheck' => 1,
    'gpgkey' => 'http://download.videolan.org/SuSE/15.4/repodata/repomd.xml.key',
    'keeppackages' => 0,
    'priority' => 85,
    'type' => 'rpm-md',
    'url' => 'http://download.videolan.org/SuSE/15.4/',
    'file_name' => 'third_party_-_VLC.repo'
}
default['packages']['opensuse']['15.4']['repo']['third_party_-_VSCode'] = {
    'autorefresh' => 0,
    'enabled' => 1,
    'gpgcheck' => 0,
    'gpgkey' => 'https://packages.microsoft.com/keys/microsoft.asc',
    'keeppackages' => 0,
    'priority' => 85,
    'type' => 'rpm-md',
    'url' => 'https://packages.microsoft.com/yumrepos/vscode',
    'file_name' => 'third_party_-_VSCode.repo'
}
default['packages']['opensuse']['15.4']['repo']['obs_-_Archiving'] = {
    'autorefresh' => 0,
    'enabled' => 1,
    'gpgcheck' => 1,
    'gpgkey' => 'https://download.opensuse.org/repositories/Archiving/openSUSE_Leap_15.4/repodata/repomd.xml.key',
    'keeppackages' => 0,
    'priority' => 90,
    'type' => 'rpm-md',
    'url' => 'https://download.opensuse.org/repositories/Archiving/openSUSE_Leap_15.4/',
    'file_name' => 'obs_-_Archiving.repo'
}
default['packages']['opensuse']['15.4']['repo']['obs_-_Artwork:Wallpapers'] = {
    'autorefresh' => 0,
    'enabled' => 1,
    'gpgcheck' => 1,
    'gpgkey' => 'https://download.opensuse.org/repositories/artwork:/wallpapers/15.4/repodata/repomd.xml.key',
    'keeppackages' => 0,
    'priority' => 90,
    'type' => 'rpm-md',
    'url' => 'https://download.opensuse.org/repositories/artwork:/wallpapers/15.4/',
    'file_name' => 'obs_-_Artwork:Wallpapers.repo'
}
default['packages']['opensuse']['15.4']['repo']['obs_-_Devel:Languages:Go'] = {
    'autorefresh' => 0,
    'enabled' => 1,
    'gpgcheck' => 1,
    'gpgkey' => 'https://download.opensuse.org/repositories/devel:/languages:/go/15.4/repodata/repomd.xml.key',
    'keeppackages' => 0,
    'priority' => 90,
    'type' => 'rpm-md',
    'url' => 'https://download.opensuse.org/repositories/devel:/languages:/go/15.4/',
    'file_name' => 'obs_-_Devel:Languages:Go.repo'
}
default['packages']['opensuse']['15.4']['repo']['obs_-_Devel:Languages:NodeJS'] = {
    'autorefresh' => 0,
    'enabled' => 1,
    'gpgcheck' => 1,
    'gpgkey' => 'https://download.opensuse.org/repositories/devel:/languages:/nodejs/15.4/repodata/repomd.xml.key',
    'keeppackages' => 0,
    'priority' => 90,
    'type' => 'rpm-md',
    'url' => 'https://download.opensuse.org/repositories/devel:/languages:/nodejs/15.4/',
    'file_name' => 'obs_-_Devel:Languages:NodeJS.repo'
}
default['packages']['opensuse']['15.4']['repo']['obs_-_Devel:Languages:Perl'] = {
    'autorefresh' => 0,
    'enabled' => 1,
    'gpgcheck' => 1,
    'gpgkey' => 'https://download.opensuse.org/repositories/devel:/languages:/perl/15.4/repodata/repomd.xml.key',
    'keeppackages' => 0,
    'priority' => 90,
    'type' => 'rpm-md',
    'url' => 'https://download.opensuse.org/repositories/devel:/languages:/perl/15.4/',
    'file_name' => 'obs_-_Devel:Languages:Perl.repo'
}
default['packages']['opensuse']['15.4']['repo']['obs_-_Devel:Languages:Python'] = {
    'autorefresh' => 0,
    'enabled' => 1,
    'gpgcheck' => 1,
    'gpgkey' => 'https://download.opensuse.org/repositories/devel:/languages:/python/15.4/repodata/repomd.xml.key',
    'keeppackages' => 0,
    'priority' => 90,
    'type' => 'rpm-md',
    'url' => 'https://download.opensuse.org/repositories/devel:/languages:/python/15.4/',
    'file_name' => 'obs_-_Devel:Languages:Python.repo'
}
default['packages']['opensuse']['15.4']['repo']['obs_-_Devel:Languages:Ruby:Extensions'] = {
    'autorefresh' => 0,
    'enabled' => 1,
    'gpgcheck' => 1,
    'gpgkey' => 'https://download.opensuse.org/repositories/devel:/languages:/ruby:/extensions/15.4/repodata/repomd.xml.key',
    'keeppackages' => 0,
    'priority' => 90,
    'type' => 'rpm-md',
    'url' => 'https://download.opensuse.org/repositories/devel:/languages:/ruby:/extensions/15.4/',
    'file_name' => 'obs_-_Devel:Languages:Ruby:Extensions.repo'
}
default['packages']['opensuse']['15.4']['repo']['obs_-_Devel:Languages:Ruby'] = {
    'autorefresh' => 0,
    'enabled' => 1,
    'gpgcheck' => 1,
    'gpgkey' => 'https://download.opensuse.org/repositories/devel:/languages:/ruby/15.4/repodata/repomd.xml.key',
    'keeppackages' => 0,
    'priority' => 90,
    'type' => 'rpm-md',
    'url' => 'https://download.opensuse.org/repositories/devel:/languages:/ruby/15.4/',
    'file_name' => 'obs_-_Devel:Languages:Ruby.repo'
}
default['packages']['opensuse']['15.4']['repo']['obs_-_Devel:Tools'] = {
    'autorefresh' => 0,
    'enabled' => 1,
    'keeppackages' => 0,

    'priority' => 90,
    'type' => 'rpm-md',
    'url' => 'https://download.opensuse.org/repositories/devel:/tools/15.4/',
    'file_name' => 'obs_-_Devel:Tools.repo'
}
default['packages']['opensuse']['15.4']['repo']['obs_-_Editors'] = {
    'autorefresh' => 0,
    'enabled' => 1,
    'gpgcheck' => 1,
    'gpgkey' => 'https://download.opensuse.org/repositories/editors/openSUSE_Leap_15.4/repodata/repomd.xml.key',
    'keeppackages' => 0,
    'priority' => 90,
    'type' => 'rpm-md',
    'url' => 'https://download.opensuse.org/repositories/editors/openSUSE_Leap_15.4/',
    'file_name' => 'obs_-_Editors.repo'
}
default['packages']['opensuse']['15.4']['repo']['obs_-_Emulators'] = {
    'autorefresh' => 0,
    'enabled' => 1,
    'gpgcheck' => 1,
    'gpgkey' => 'https://download.opensuse.org/repositories/Emulators/15.4/repodata/repomd.xml.key',
    'keeppackages' => 0,
    'priority' => 90,
    'type' => 'rpm-md',
    'url' => 'https://download.opensuse.org/repositories/Emulators/15.4/',
    'file_name' => 'obs_-_Emulators.repo'
}
default['packages']['opensuse']['15.4']['repo']['obs_-_Filesystems'] = {
    'autorefresh' => 0,
    'enabled' => 1,
    'gpgcheck' => 1,
    'gpgkey' => 'https://download.opensuse.org/repositories/filesystems/15.4/repodata/repomd.xml.key',
    'keeppackages' => 0,
    'priority' => 90,
    'type' => 'rpm-md',
    'url' => 'https://download.opensuse.org/repositories/filesystems/15.4/',
    'file_name' => 'obs_-_Filesystems.repo'
}
default['packages']['opensuse']['15.4']['repo']['obs_-_Games'] = {
    'autorefresh' => 0,
    'enabled' => 1,
    'gpgcheck' => 1,
    'gpgkey' => 'https://download.opensuse.org/repositories/games/15.4/repodata/repomd.xml.key',
    'keeppackages' => 0,
    'priority' => 90,
    'type' => 'rpm-md',
    'url' => 'https://download.opensuse.org/repositories/games/15.4/',
    'file_name' => 'obs_-_Games.repo'
}
default['packages']['opensuse']['15.4']['repo']['obs_-_Games:Tools'] = {
    'autorefresh' => 0,
    'enabled' => 1,
    'gpgcheck' => 1,
    'gpgkey' => 'https://download.opensuse.org/repositories/games:/tools/15.4/repodata/repomd.xml.key',
    'keeppackages' => 0,
    'priority' => 90,
    'type' => 'rpm-md',
    'url' => 'https://download.opensuse.org/repositories/games:/tools/15.4/',
    'file_name' => 'obs_-_Games:Tools.repo'
}
default['packages']['opensuse']['15.4']['repo']['obs_-_Graphics'] = {
    'autorefresh' => 0,
    'enabled' => 1,
    'gpgcheck' => 1,
    'gpgkey' => 'https://download.opensuse.org/repositories/graphics/15.4/repodata/repomd.xml.key',
    'keeppackages' => 0,
    'priority' => 90,
    'type' => 'rpm-md',
    'url' => 'https://download.opensuse.org/repositories/graphics/15.4/',
    'file_name' => 'obs_-_Graphics.repo'
}
default['packages']['opensuse']['15.4']['repo']['obs_-_Hardware'] = {
    'autorefresh' => 0,
    'enabled' => 1,
    'gpgcheck' => 1,
    'gpgkey' => 'https://download.opensuse.org/repositories/hardware/15.4/repodata/repomd.xml.key',
    'keeppackages' => 0,
    'priority' => 90,
    'type' => 'rpm-md',
    'url' => 'https://download.opensuse.org/repositories/hardware/15.4/',
    'file_name' => 'obs_-_Hardware.repo'
}
default['packages']['opensuse']['15.4']['repo']['obs_-_KDE:Applications'] = {
    'autorefresh' => 0,
    'enabled' => 1,
    'keeppackages' => 0,

    'priority' => 80,
    'type' => 'rpm-md',
    'url' => 'https://download.opensuse.org/repositories/KDE:/Applications/KDE_Frameworks5_openSUSE_Leap_15.4/',
    'file_name' => 'obs_-_KDE:Applications.repo'
}
default['packages']['opensuse']['15.4']['repo']['obs_-_KDE:Extra'] = {
    'autorefresh' => 0,
    'enabled' => 1,
    'keeppackages' => 0,

    'priority' => 80,
    'type' => 'rpm-md',
    'url' => 'https://download.opensuse.org/repositories/KDE:/Extra/KDE_Applications_openSUSE_Leap_15.4/',
    'file_name' => 'obs_-_KDE:Extra.repo'
}
default['packages']['opensuse']['15.4']['repo']['obs_-_KDE:Frameworks5'] = {
    'autorefresh' => 0,
    'enabled' => 1,
    'keeppackages' => 0,

    'priority' => 80,
    'type' => 'rpm-md',
    'url' => 'https://download.opensuse.org/repositories/KDE:/Frameworks5/openSUSE_Leap_15.4/',
    'file_name' => 'obs_-_KDE:Frameworks5.repo'
}
default['packages']['opensuse']['15.4']['repo']['obs_-_KDE:Qt5'] = {
    'autorefresh' => 0,
    'enabled' => 1,
    'keeppackages' => 0,

    'priority' => 80,
    'type' => 'rpm-md',
    'url' => 'https://download.opensuse.org/repositories/KDE:/Qt5/openSUSE_Leap_15.4/',
    'file_name' => 'obs_-_KDE:Qt5.repo'
}
default['packages']['opensuse']['15.4']['repo']['obs_-_Kernel:HEAD:Backport:KMP:Standard'] = {
    'autorefresh' => 0,
    'enabled' => 1,
    'keeppackages' => 0,

    'priority' => 90,
    'url' => 'https://download.opensuse.org/repositories/Kernel:/HEAD:/Backport:/KMP/standard/',
    'file_name' => 'obs_-_Kernel:HEAD:Backport:KMP:Standard.repo'
}
default['packages']['opensuse']['15.4']['repo']['obs_-_Kernel:HEAD:Backport:Standard'] = {
    'autorefresh' => 0,
    'enabled' => 1,
    'keeppackages' => 0,

    'priority' => 90,
    'url' => 'https://download.opensuse.org/repositories/Kernel:/HEAD:/Backport/standard/',
    'file_name' => 'obs_-_Kernel:HEAD:Backport:Standard.repo'
}
default['packages']['opensuse']['15.4']['repo']['obs_-_Kernel:Tools'] = {
    'autorefresh' => 0,
    'enabled' => 1,
    'keeppackages' => 0,

    'priority' => 90,
    'type' => 'rpm-md',
    'url' => 'https://download.opensuse.org/repositories/Kernel:/tools/SLE_15_SP4/',
    'file_name' => 'obs_-_Kernel:Tools.repo'
}
default['packages']['opensuse']['15.4']['repo']['obs_-_LibreOffice:Factory'] = {
    'autorefresh' => 0,
    'enabled' => 1,
    'keeppackages' => 0,

    'priority' => 90,
    'type' => 'rpm-md',
    'url' => 'https://download.opensuse.org/repositories/LibreOffice:/Factory/openSUSE_Leap_15.4/',
    'file_name' => 'obs_-_LibreOffice:Factory.repo'
}
default['packages']['opensuse']['15.4']['repo']['obs_-_Mozilla'] = {
    'autorefresh' => 0,
    'enabled' => 1,
    'gpgcheck' => 1,
    'gpgkey' => 'https://download.opensuse.org/repositories/mozilla/openSUSE_Leap_15.4/repodata/repomd.xml.key',
    'keeppackages' => 0,
    'priority' => 90,
    'type' => 'rpm-md',
    'url' => 'https://download.opensuse.org/repositories/mozilla/openSUSE_Leap_15.4/',
    'file_name' => 'obs_-_Mozilla.repo'
}
default['packages']['opensuse']['15.4']['repo']['obs_-_Multimedia:Applications'] = {
    'autorefresh' => 0,
    'enabled' => 1,
    'gpgcheck' => 1,
    'gpgkey' => 'https://download.opensuse.org/repositories/multimedia:/apps/15.4/repodata/repomd.xml.key',
    'keeppackages' => 0,
    'priority' => 90,
    'type' => 'rpm-md',
    'url' => 'https://download.opensuse.org/repositories/multimedia:/apps/15.4/',
    'file_name' => 'obs_-_Multimedia:Applications.repo'
}
default['packages']['opensuse']['15.4']['repo']['obs_-_Multimedia:Libraries'] = {
    'autorefresh' => 0,
    'enabled' => 1,
    'gpgcheck' => 1,
    'gpgkey' => 'https://download.opensuse.org/repositories/multimedia:/libs/15.4/repodata/repomd.xml.key',
    'keeppackages' => 0,
    'priority' => 90,
    'type' => 'rpm-md',
    'url' => 'https://download.opensuse.org/repositories/multimedia:/libs/15.4/',
    'file_name' => 'obs_-_Multimedia:Libraries.repo'
}
default['packages']['opensuse']['15.4']['repo']['obs_-_Network:IDM'] = {
    'autorefresh' => 0,
    'enabled' => 1,
    'gpgcheck' => 1,
    'gpgkey' => 'https://download.opensuse.org/repositories/network:/idm/15.4/repodata/repomd.xml.key',
    'keeppackages' => 0,
    'priority' => 90,
    'type' => 'rpm-md',
    'url' => 'https://download.opensuse.org/repositories/network:/idm/15.4/',
    'file_name' => 'obs_-_Network:IDM.repo'
}
default['packages']['opensuse']['15.4']['repo']['obs_-_Network:IM:Signal'] = {
    'autorefresh' => 0,
    'enabled' => 1,
    'gpgcheck' => 1,
    'gpgkey' => 'https://download.opensuse.org/repositories/network:/im:/signal/15.4/repodata/repomd.xml.key',
    'keeppackages' => 0,
    'priority' => 90,
    'type' => 'rpm-md',
    'url' => 'https://download.opensuse.org/repositories/network:/im:/signal/15.4/',
    'file_name' => 'obs_-_Network:IM:Signal.repo'
}
default['packages']['opensuse']['15.4']['repo']['obs_-_Network:LDAP'] = {
    'autorefresh' => 0,
    'enabled' => 1,
    'gpgcheck' => 1,
    'gpgkey' => 'https://download.opensuse.org/repositories/network:/ldap/15.4/repodata/repomd.xml.key',
    'keeppackages' => 0,
    'priority' => 90,
    'type' => 'rpm-md',
    'url' => 'https://download.opensuse.org/repositories/network:/ldap/15.4/',
    'file_name' => 'obs_-_Network:LDAP.repo'
}
default['packages']['opensuse']['15.4']['repo']['obs_-_Network'] = {
    'autorefresh' => 0,
    'enabled' => 1,
    'gpgcheck' => 1,
    'gpgkey' => 'https://download.opensuse.org/repositories/network/15.4/repodata/repomd.xml.key',
    'keeppackages' => 0,
    'priority' => 90,
    'type' => 'rpm-md',
    'url' => 'https://download.opensuse.org/repositories/network/15.4/',
    'file_name' => 'obs_-_Network.repo'
}
default['packages']['opensuse']['15.4']['repo']['obs_-_Network:Utilities'] = {
    'autorefresh' => 0,
    'enabled' => 1,
    'gpgcheck' => 1,
    'gpgkey' => 'https://download.opensuse.org/repositories/network:/utilities/15.4/repodata/repomd.xml.key',
    'keeppackages' => 0,
    'priority' => 90,
    'type' => 'rpm-md',
    'url' => 'https://download.opensuse.org/repositories/network:/utilities/15.4/',
    'file_name' => 'obs_-_Network:Utilities.repo'
}
default['packages']['opensuse']['15.4']['repo']['obs_-_Office'] = {
    'autorefresh' => 0,
    'enabled' => 1,
    'gpgcheck' => 1,
    'gpgkey' => 'https://download.opensuse.org/repositories/Office/openSUSE_Leap_15.4/repodata/repomd.xml.key',
    'keeppackages' => 0,
    'priority' => 90,
    'type' => 'rpm-md',
    'url' => 'https://download.opensuse.org/repositories/Office/openSUSE_Leap_15.4/',
    'file_name' => 'obs_-_Office.repo'
}
default['packages']['opensuse']['15.4']['repo']['obs_-_Printing'] = {
    'autorefresh' => 0,
    'enabled' => 1,
    'gpgcheck' => 1,
    'gpgkey' => 'https://download.opensuse.org/repositories/Printing/15.4/repodata/repomd.xml.key',
    'keeppackages' => 0,
    'priority' => 90,
    'type' => 'rpm-md',
    'url' => 'https://download.opensuse.org/repositories/Printing/15.4/',
    'file_name' => 'obs_-_Printing.repo'
}
default['packages']['opensuse']['15.4']['repo']['obs_-_Publishing'] = {
    'autorefresh' => 0,
    'enabled' => 1,
    'gpgcheck' => 1,
    'gpgkey' => 'https://download.opensuse.org/repositories/Publishing/openSUSE_Leap_15.4/repodata/repomd.xml.key',
    'keeppackages' => 0,
    'priority' => 90,
    'type' => 'rpm-md',
    'url' => 'https://download.opensuse.org/repositories/Publishing/openSUSE_Leap_15.4/',
    'file_name' => 'obs_-_Publishing.repo'
}
default['packages']['opensuse']['15.4']['repo']['obs_-_Science'] = {
    'autorefresh' => 0,
    'enabled' => 1,
    'gpgcheck' => 1,
    'gpgkey' => 'https://download.opensuse.org/repositories/science/15.4/repodata/repomd.xml.key',
    'keeppackages' => 0,
    'priority' => 90,
    'type' => 'rpm-md',
    'url' => 'https://download.opensuse.org/repositories/science/15.4/',
    'file_name' => 'obs_-_Science.repo'
}
default['packages']['opensuse']['15.4']['repo']['obs_-_Security:AppArmor'] = {
    'autorefresh' => 0,
    'enabled' => 1,
    'gpgcheck' => 1,
    'gpgkey' => 'https://download.opensuse.org/repositories/security:/apparmor/15.4/repodata/repomd.xml.key',
    'keeppackages' => 0,
    'priority' => 90,
    'type' => 'rpm-md',
    'url' => 'https://download.opensuse.org/repositories/security:/apparmor/15.4/',
    'file_name' => 'obs_-_Security:AppArmor.repo'
}
default['packages']['opensuse']['15.4']['repo']['obs_-_Security:Forensics'] = {
    'autorefresh' => 0,
    'enabled' => 1,
    'gpgcheck' => 1,
    'gpgkey' => 'https://download.opensuse.org/repositories/security:/forensics/15.4/repodata/repomd.xml.key',
    'keeppackages' => 0,
    'priority' => 90,
    'type' => 'rpm-md',
    'url' => 'https://download.opensuse.org/repositories/security:/forensics/15.4/',
    'file_name' => 'obs_-_Security:Forensics.repo'
}
default['packages']['opensuse']['15.4']['repo']['obs_-_Security:IDM'] = {
    'autorefresh' => 0,
    'enabled' => 1,
    'gpgcheck' => 1,
    'gpgkey' => 'https://download.opensuse.org/repositories/security:/idm/15.4/repodata/repomd.xml.key',
    'keeppackages' => 0,
    'priority' => 90,
    'type' => 'rpm-md',
    'url' => 'https://download.opensuse.org/repositories/security:/idm/15.4/',
    'file_name' => 'obs_-_Security:IDM.repo'
}
default['packages']['opensuse']['15.4']['repo']['obs_-_Security:KeePassXC'] = {
    'autorefresh' => 0,
    'enabled' => 1,
    'gpgcheck' => 1,
    'gpgkey' => 'https://download.opensuse.org/repositories/security:/keepassxc/15.4/repodata/repomd.xml.key',
    'keeppackages' => 0,
    'priority' => 90,
    'type' => 'rpm-md',
    'url' => 'https://download.opensuse.org/repositories/security:/keepassxc/15.4/',
    'file_name' => 'obs_-_Security:KeePassXC.repo'
}
default['packages']['opensuse']['15.4']['repo']['obs_-_Security:Logging'] = {
    'autorefresh' => 0,
    'enabled' => 1,
    'gpgcheck' => 1,
    'gpgkey' => 'https://download.opensuse.org/repositories/security:/logging/15.4/repodata/repomd.xml.key',
    'keeppackages' => 0,
    'priority' => 90,
    'type' => 'rpm-md',
    'url' => 'https://download.opensuse.org/repositories/security:/logging/15.4/',
    'file_name' => 'obs_-_Security:Logging.repo'
}
default['packages']['opensuse']['15.4']['repo']['obs_-_Security:NetFilter'] = {
    'autorefresh' => 0,
    'enabled' => 1,
    'gpgcheck' => 1,
    'gpgkey' => 'https://download.opensuse.org/repositories/security:/netfilter/openSUSE_Leap_15.4/repodata/repomd.xml.key',
    'keeppackages' => 0,
    'priority' => 90,
    'type' => 'rpm-md',
    'url' => 'https://download.opensuse.org/repositories/security:/netfilter/openSUSE_Leap_15.4/',
    'file_name' => 'obs_-_Security:NetFilter.repo'
}
default['packages']['opensuse']['15.4']['repo']['obs_-_Security:Privacy'] = {
    'autorefresh' => 0,
    'enabled' => 1,
    'gpgcheck' => 1,
    'gpgkey' => 'https://download.opensuse.org/repositories/security:/privacy/15.4/repodata/repomd.xml.key',
    'keeppackages' => 0,
    'priority' => 90,
    'type' => 'rpm-md',
    'url' => 'https://download.opensuse.org/repositories/security:/privacy/15.4/',
    'file_name' => 'obs_-_Security:Privacy.repo'
}
default['packages']['opensuse']['15.4']['repo']['obs_-_Security'] = {
    'autorefresh' => 0,
    'enabled' => 1,
    'gpgcheck' => 1,
    'gpgkey' => 'https://download.opensuse.org/repositories/security/15.4/repodata/repomd.xml.key',
    'keeppackages' => 0,
    'priority' => 90,
    'type' => 'rpm-md',
    'url' => 'https://download.opensuse.org/repositories/security/15.4/',
    'file_name' => 'obs_-_Security.repo'
}
default['packages']['opensuse']['15.4']['repo']['obs_-_Security:SELinux'] = {
    'autorefresh' => 0,
    'enabled' => 1,
    'gpgcheck' => 1,
    'gpgkey' => 'https://download.opensuse.org/repositories/security:/SELinux/15.4/repodata/repomd.xml.key',
    'keeppackages' => 0,
    'priority' => 90,
    'type' => 'rpm-md',
    'url' => 'https://download.opensuse.org/repositories/security:/SELinux/15.4/',
    'file_name' => 'obs_-_Security:SELinux.repo'
}
default['packages']['opensuse']['15.4']['repo']['obs_-_Security:Stunnel'] = {
    'autorefresh' => 0,
    'enabled' => 1,
    'gpgcheck' => 1,
    'gpgkey' => 'https://download.opensuse.org/repositories/security:/Stunnel/openSUSE_Leap_15.4_standard/repodata/repomd.xml.key',
    'keeppackages' => 0,
    'priority' => 90,
    'type' => 'rpm-md',
    'url' => 'https://download.opensuse.org/repositories/security:/Stunnel/openSUSE_Leap_15.4_standard/',
    'file_name' => 'obs_-_Security:Stunnel.repo'
}
default['packages']['opensuse']['15.4']['repo']['obs_-_Server:Database:PostgreSQL'] = {
    'autorefresh' => 0,
    'enabled' => 1,
    'gpgcheck' => 1,
    'gpgkey' => 'https://download.opensuse.org/repositories/server:/database:/postgresql/15.4/repodata/repomd.xml.key',
    'keeppackages' => 0,
    'priority' => 90,
    'type' => 'rpm-md',
    'url' => 'https://download.opensuse.org/repositories/server:/database:/postgresql/15.4/',
    'file_name' => 'obs_-_Server:Database:PostgreSQL.repo'
}
default['packages']['opensuse']['15.4']['repo']['obs_-_Server:Database'] = {
    'autorefresh' => 0,
    'enabled' => 1,
    'gpgcheck' => 1,
    'gpgkey' => 'https://download.opensuse.org/repositories/server:/database/15.4/repodata/repomd.xml.key',
    'keeppackages' => 0,
    'priority' => 90,
    'type' => 'rpm-md',
    'url' => 'https://download.opensuse.org/repositories/server:/database/15.4/',
    'file_name' => 'obs_-_Server:Database.repo'
}
default['packages']['opensuse']['15.4']['repo']['obs_-_Server:DNS'] = {
    'autorefresh' => 0,
    'enabled' => 1,
    'gpgcheck' => 1,
    'gpgkey' => 'https://download.opensuse.org/repositories/server:/dns/15.4/repodata/repomd.xml.key',
    'keeppackages' => 0,
    'priority' => 90,
    'type' => 'rpm-md',
    'url' => 'https://download.opensuse.org/repositories/server:/dns/15.4/',
    'file_name' => 'obs_-_Server:DNS.repo'
}
default['packages']['opensuse']['15.4']['repo']['obs_-_Server:HTTP'] = {
    'autorefresh' => 0,
    'enabled' => 1,
    'gpgcheck' => 1,
    'gpgkey' => 'https://download.opensuse.org/repositories/server:/http/15.4/repodata/repomd.xml.key',
    'keeppackages' => 0,
    'priority' => 90,
    'type' => 'rpm-md',
    'url' => 'https://download.opensuse.org/repositories/server:/http/15.4/',
    'file_name' => 'obs_-_Server:HTTP.repo'
}
default['packages']['opensuse']['15.4']['repo']['obs_-_Server:Mail'] = {
    'autorefresh' => 0,
    'enabled' => 1,
    'keeppackages' => 0,

    'priority' => 90,
    'type' => 'rpm-md',
    'url' => 'https://download.opensuse.org/repositories/server:/mail/15.4/',
    'file_name' => 'obs_-_Server:Mail.repo'
}
default['packages']['opensuse']['15.4']['repo']['obs_-_Server:Monitoring'] = {
    'autorefresh' => 0,
    'enabled' => 1,
    'gpgcheck' => 1,
    'gpgkey' => 'https://download.opensuse.org/repositories/server:/monitoring/15.4/repodata/repomd.xml.key',
    'keeppackages' => 0,
    'priority' => 90,
    'type' => 'rpm-md',
    'url' => 'https://download.opensuse.org/repositories/server:/monitoring/15.4/',
    'file_name' => 'obs_-_Server:Monitoring.repo'
}
default['packages']['opensuse']['15.4']['repo']['obs_-_Server:PHP:Applications'] = {
    'autorefresh' => 0,
    'enabled' => 1,
    'gpgcheck' => 1,
    'gpgkey' => 'https://download.opensuse.org/repositories/server:/php:/applications/15.4/repodata/repomd.xml.key',
    'keeppackages' => 0,
    'priority' => 90,
    'type' => 'rpm-md',
    'url' => 'https://download.opensuse.org/repositories/server:/php:/applications/15.4/',
    'file_name' => 'obs_-_Server:PHP:Applications.repo'
}
default['packages']['opensuse']['15.4']['repo']['obs_-_Server:PHP:Extensions'] = {
    'autorefresh' => 0,
    'enabled' => 1,
    'gpgcheck' => 1,
    'gpgkey' => 'https://download.opensuse.org/repositories/server:/php:/extensions/15.4/repodata/repomd.xml.key',
    'keeppackages' => 0,
    'priority' => 90,
    'type' => 'rpm-md',
    'url' => 'https://download.opensuse.org/repositories/server:/php:/extensions/15.4/',
    'file_name' => 'obs_-_Server:PHP:Extensions.repo'
}
default['packages']['opensuse']['15.4']['repo']['obs_-_Server:Proxy'] = {
    'autorefresh' => 0,
    'enabled' => 1,
    'gpgcheck' => 1,
    'gpgkey' => 'https://download.opensuse.org/repositories/server:/proxy/15.4/repodata/repomd.xml.key',
    'keeppackages' => 0,
    'priority' => 90,
    'type' => 'rpm-md',
    'url' => 'https://download.opensuse.org/repositories/server:/proxy/15.4/',
    'file_name' => 'obs_-_Server:Proxy.repo'
}
default['packages']['opensuse']['15.4']['repo']['obs_-_Shells'] = {
    'autorefresh' => 0,
    'enabled' => 1,
    'gpgcheck' => 1,
    'gpgkey' => 'https://download.opensuse.org/repositories/shells/openSUSE_Leap_15.4/repodata/repomd.xml.key',
    'keeppackages' => 0,
    'priority' => 90,
    'type' => 'rpm-md',
    'url' => 'https://download.opensuse.org/repositories/shells/openSUSE_Leap_15.4/',
    'file_name' => 'obs_-_Shells.repo'
}
default['packages']['opensuse']['15.4']['repo']['obs_-_Shells:Zsh-users:Antigen'] = {
    'autorefresh' => 0,
    'enabled' => 1,
    'gpgcheck' => 1,
    'gpgkey' => 'http://download.opensuse.org/repositories/shells:/zsh-users:/antigen/SLE_15/repodata/repomd.xml.key',
    'keeppackages' => 0,
    'priority' => 90,
    'type' => 'rpm-md',
    'url' => 'http://download.opensuse.org/repositories/shells:/zsh-users:/antigen/SLE_15/',
    'file_name' => 'obs_-_Shells:Zsh-users:Antigen.repo'
}
default['packages']['opensuse']['15.4']['repo']['obs_-_Shells:Zsh-users:zsh-autosuggestions'] = {
    'autorefresh' => 0,
    'enabled' => 1,
    'gpgcheck' => 1,
    'gpgkey' => 'http://download.opensuse.org/repositories/shells:/zsh-users:/zsh-autosuggestions/15.4/repodata/repomd.xml.key',
    'keeppackages' => 0,
    'priority' => 90,
    'type' => 'rpm-md',
    'url' => 'http://download.opensuse.org/repositories/shells:/zsh-users:/zsh-autosuggestions/15.4/',
    'file_name' => 'obs_-_Shells:Zsh-users:zsh-autosuggestions.repo'
}
default['packages']['opensuse']['15.4']['repo']['obs_-_Shells:Zsh-users:zsh-completions'] = {
    'autorefresh' => 0,
    'enabled' => 1,
    'gpgcheck' => 1,
    'gpgkey' => 'http://download.opensuse.org/repositories/shells:/zsh-users:/zsh-completions/15.4/repodata/repomd.xml.key',
    'keeppackages' => 0,
    'priority' => 90,
    'type' => 'rpm-md',
    'url' => 'http://download.opensuse.org/repositories/shells:/zsh-users:/zsh-completions/15.4/',
    'file_name' => 'obs_-_Shells:Zsh-users:zsh-completions.repo'
}
default['packages']['opensuse']['15.4']['repo']['obs_-_Shells:Zsh-users:zsh-history-substring-search'] = {
    'autorefresh' => 0,
    'enabled' => 1,
    'gpgcheck' => 1,
    'gpgkey' => 'http://download.opensuse.org/repositories/shells:/zsh-users:/zsh-history-substring-search/15.4/repodata/repomd.xml.key',
    'keeppackages' => 0,
    'priority' => 90,
    'type' => 'rpm-md',
    'url' => 'http://download.opensuse.org/repositories/shells:/zsh-users:/zsh-history-substring-search/15.4/',
    'file_name' => 'obs_-_Shells:Zsh-users:zsh-history-substring-search.repo'
}
default['packages']['opensuse']['15.4']['repo']['obs_-_Shells:Zsh-users:zsh-syntax-highlighting'] = {
    'autorefresh' => 0,
    'enabled' => 1,
    'gpgcheck' => 1,
    'gpgkey' => 'http://download.opensuse.org/repositories/shells:/zsh-users:/zsh-syntax-highlighting/15.4/repodata/repomd.xml.key',
    'keeppackages' => 0,
    'priority' => 90,
    'type' => 'rpm-md',
    'url' => 'http://download.opensuse.org/repositories/shells:/zsh-users:/zsh-syntax-highlighting/15.4/',
    'file_name' => 'obs_-_Shells:Zsh-users:zsh-syntax-highlighting.repo'
}
default['packages']['opensuse']['15.4']['repo']['obs_-_SystemManagement'] = {
    'autorefresh' => 0,
    'enabled' => 1,
    'gpgcheck' => 1,
    'gpgkey' => 'https://download.opensuse.org/repositories/systemsmanagement/15.4/repodata/repomd.xml.key',
    'keeppackages' => 0,
    'priority' => 90,
    'type' => 'rpm-md',
    'url' => 'https://download.opensuse.org/repositories/systemsmanagement/15.4/',
    'file_name' => 'obs_-_SystemManagement.repo'
}
default['packages']['opensuse']['15.4']['repo']['obs_-_System:PackageManager'] = {
    'autorefresh' => 0,
    'enabled' => 1,
    'gpgcheck' => 1,
    'gpgkey' => 'https://download.opensuse.org/repositories/system:/packagemanager/15.4/repodata/repomd.xml.key',
    'keeppackages' => 0,
    'priority' => 90,
    'type' => 'rpm-md',
    'url' => 'https://download.opensuse.org/repositories/system:/packagemanager/15.4/',
    'file_name' => 'obs_-_System:PackageManager.repo'
}
default['packages']['opensuse']['15.4']['repo']['obs_-_Utilities'] = {
    'autorefresh' => 0,
    'enabled' => 1,
    'gpgcheck' => 1,
    'gpgkey' => 'https://download.opensuse.org/repositories/utilities/15.4/repodata/repomd.xml.key',
    'keeppackages' => 0,
    'priority' => 90,
    'type' => 'rpm-md',
    'url' => 'https://download.opensuse.org/repositories/utilities/15.4/',
    'file_name' => 'obs_-_Utilities.repo'
}
default['packages']['opensuse']['15.4']['repo']['obs_-_Virtualization:Containers'] = {
    'autorefresh' => 0,
    'enabled' => 1,
    'keeppackages' => 0,

    'priority' => 90,
    'type' => 'rpm-md',
    'url' => 'https://download.opensuse.org/repositories/Virtualization:/containers/15.4/',
    'file_name' => 'obs_-_Virtualization:Containers.repo'
}
default['packages']['opensuse']['15.4']['repo']['obs_-_Virtualization'] = {
    'autorefresh' => 0,
    'enabled' => 1,
    'gpgcheck' => 1,
    'gpgkey' => 'https://download.opensuse.org/repositories/Virtualization/15.4/repodata/repomd.xml.key',
    'keeppackages' => 0,
    'priority' => 90,
    'type' => 'rpm-md',
    'url' => 'https://download.opensuse.org/repositories/Virtualization/15.4/',
    'file_name' => 'obs_-_Virtualization.repo'
}
default['packages']['opensuse']['15.4']['repo']['obs_-_Virtualization:Vagrant'] = {
    'autorefresh' => 0,
    'enabled' => 1,
    'gpgcheck' => 1,
    'gpgkey' => 'https://download.opensuse.org/repositories/Virtualization:/vagrant/15.4/repodata/repomd.xml.key',
    'keeppackages' => 0,
    'priority' => 90,
    'type' => 'rpm-md',
    'url' => 'https://download.opensuse.org/repositories/Virtualization:/vagrant/15.4/',
    'file_name' => 'obs_-_Virtualization:Vagrant.repo'
}
default['packages']['opensuse']['15.4']['repo']['obs_-_Virtualization:VirtualBox'] = {
    'autorefresh' => 0,
    'enabled' => 0,
    'gpgcheck' => 1,
    'gpgkey' => 'https://download.opensuse.org/repositories/Virtualization:/virtualbox/15.4/repodata/repomd.xml.key',
    'keeppackages' => 0,
    'priority' => 90,
    'type' => 'rpm-md',
    'url' => 'https://download.opensuse.org/repositories/Virtualization:/virtualbox/15.4/',
    'file_name' => 'obs_-_Virtualization:VirtualBox.repo'
}
default['packages']['opensuse']['15.4']['repo']['obs_-_X11:Utilities'] = {
    'autorefresh' => 0,
    'enabled' => 1,
    'gpgcheck' => 1,
    'gpgkey' => 'https://download.opensuse.org/repositories/X11:/Utilities/15.4/repodata/repomd.xml.key',
    'keeppackages' => 0,
    'priority' => 90,
    'type' => 'rpm-md',
    'url' => 'https://download.opensuse.org/repositories/X11:/Utilities/15.4/',
    'file_name' => 'obs_-_X11:Utilities.repo'
}
default['packages']['opensuse']['15.4']['repo']['obs_-_X11:XOrg'] = {
    'autorefresh' => 0,
    'enabled' => 1,
    'gpgcheck' => 1,
    'gpgkey' => 'https://download.opensuse.org/repositories/X11:/XOrg/openSUSE_Leap_15.4/repodata/repomd.xml.key',
    'keeppackages' => 0,
    'priority' => 90,
    'type' => 'rpm-md',
    'url' => 'https://download.opensuse.org/repositories/X11:/XOrg/openSUSE_Leap_15.4/',
    'file_name' => 'obs_-_X11:XOrg.repo'
}
default['packages']['opensuse']['15.4']['repo']['obs_-_YaST:Head'] = {
    'autorefresh' => 0,
    'enabled' => 1,
    'gpgcheck' => 1,
    'gpgkey' => 'https://download.opensuse.org/repositories/YaST:/Head/15.4/repodata/repomd.xml.key',
    'keeppackages' => 0,
    'priority' => 90,
    'type' => 'rpm-md',
    'url' => 'https://download.opensuse.org/repositories/YaST:/Head/15.4/',
    'file_name' => 'obs_-_YaST:Head.repo'
}
default['packages']['opensuse']['15.4']['repo']['obs_-_Zypp:Head'] = {
    'autorefresh' => 0,
    'enabled' => 1,
    'gpgkey' => 'https://download.opensuse.org/repositories/zypp:/SLE-15-SP4-Branch/openSUSE_Leap_15.4/repodata/repomd.xml.key',
    'keeppackages' => 0,
    'priority' => 90,
    'type' => 'rpm-md',
    'url' => 'https://download.opensuse.org/repositories/zypp:/SLE-15-SP4-Branch/openSUSE_Leap_15.4/',
    'file_name' => 'obs_-_Zypp:Head.repo'
}
