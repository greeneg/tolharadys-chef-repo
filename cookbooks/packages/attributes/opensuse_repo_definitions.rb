default['packages']['opensuse']['15.4']['repo']['main-oss'] = {
    'autorefresh' => false,
    'r_name' => 'main-oss',
    'description' => 'Main OSS Repository',
    'enabled' => true,
    'gpgcheck' => true,
    'gpgkey' => 'https://download.opensuse.org/distribution/leap/15.4/repo/oss/repodata/repomd.xml.key',
    'keeppackages' => false,
    'name' => 'main-oss',
    'priority' => 98,
    'type' => 'rpm-md',
    'url' => 'http://download.opensuse.org/distribution/leap/15.4/repo/oss/',
    'file_name' => 'main-oss'
}
default['packages']['opensuse']['15.4']['repo']['main-oss_-_updates'] = {
    'autorefresh' => false,
    'r_name' => 'main-oss_-_updates',
    'description' => 'Main OSS Update Repository',
    'enabled' => true,
    'gpgcheck' => true,
    'gpgkey' => 'https://download.opensuse.org/update/leap/15.4/oss/repodata/repomd.xml.key',
    'keeppackages' => false,
    'name' => 'main-oss-updates',
    'priority' => 95,
    'type' => 'rpm-md',
    'url' => 'http://download.opensuse.org/update/leap/15.4/oss',
    'file_name' => 'main-oss_-_updates'
}
default['packages']['opensuse']['15.4']['repo']['main-non-oss'] = {
    'autorefresh' => false,
    'r_name' => 'main-non-oss',
    'description' => 'Main Non-OSS Repository',
    'enabled' => true,
    'gpgcheck' => true,
    'gpgkey' => 'https://download.opensuse.org/distribution/leap/15.4/repo/non-oss/repodata/repomd.xml.key',
    'keeppackages' => false,
    'name' => 'main-non-oss',
    'priority' => 98,
    'type' => 'rpm-md',
    'url' => 'http://download.opensuse.org/distribution/leap/15.4/repo/non-oss/',
    'file_name' => 'main-non-oss'
}
default['packages']['opensuse']['15.4']['repo']['main-non-oss_-_updates'] = {
    'autorefresh' => false,
    'r_name' => 'main-non-oss_-_updates',
    'description' => 'Main Non-OSS Updates Repository',
    'enabled' => true,
    'gpgcheck' => true,
    'gpgkey' => 'https://download.opensuse.org/update/leap/15.4/non-oss/repodata/repomd.xml.key',
    'keeppackages' => false,
    'name' => 'main-non-oss-updates',
    'priority' => 95,
    'type' => 'rpm-md',
    'url' => 'http://download.opensuse.org/opensuse/update/leap/15.4/non-oss/',
    'file_name' => 'main-non-oss_-_updates'
}
default['packages']['opensuse']['15.4']['repo']['repo-backports-update'] = {
    'autorefresh' => false,
    'r_name' => 'repo-backports-update',
    'description' => 'Update repository of openSUSE Backports',
    'enabled' => true,
    'gpgcheck' => false,
    'gpgkey' => 'https://download.opensuse.org/update/leap/15.5/backports/repodata/repomd.xml.key',
    'keeppackages' => false,
    'name' => 'repo-backports-update',
    'priority' => 93,
    'type' => 'rpm-md',
    'url' => 'http://download.opensuse.org/update/leap/$releasever/backports/',
    'file_name' => 'repo-backports-update.repo'
}
default['packages']['opensuse']['15.4']['repo']['repo-sle-update'] = {
    'autorefresh' => false,
    'r_name' => 'repo-sle-update',
    'description' => 'Update repository with updates from SUSE Linux Enterprise 15',
    'enabled' => true,
    'gpgcheck' => false,
    'gpgkey' => 'https://download.opensuse.org/update/leap/15.5/sle/repodata/repomd.xml.key',
    'keeppackages' => false,
    'name' => 'repo-sle-update',
    'priority' => 93,
    'type' => 'rpm-md',
    'url' => 'http://download.opensuse.org/update/leap/$releasever/sle/',
    'file_name' => 'repo-sle-update'
}
default['packages']['opensuse']['15.4']['repo']['third_party_-_Google_Chrome'] = {
    'autorefresh' => false,
    'r_name' => 'third_party_-_Google_Chrome',
    'description' => 'Third Party - Google Chrome',
    'enabled' => true,
    'gpgcheck' => false,
    'gpgkey' => '',
    'keeppackages' => false,
    'name' => 'third-party-google-chrome-beta',
    'priority' => 85,
    'type' => 'rpm-md',
    'url' => 'http://dl.google.com/linux/chrome/rpm/stable/x86_64',
    'file_name' => 'third_party_-_Google_Chrome'
}
default['packages']['opensuse']['15.4']['repo']['third_party_-_Microsoft:Edge'] = {
    'autorefresh' => false,
    'r_name' => 'third_party_-_Microsoft:Edge',
    'description' => 'Third Party - Microsoft:Edge',
    'enabled' => true,
    'gpgcheck' => true,
    'gpgkey' => 'https://packages.microsoft.com/keys/microsoft.asc',
    'keeppackages' => false,
    'name' => 'third-party-microsoft-edge',
    'priority' => 85,
    'type' => 'rpm-md',
    'url' => 'https://packages.microsoft.com/yumrepos/edge/',
    'file_name' => 'third_party_-_Microsoft:Edge'
}
default['packages']['opensuse']['15.4']['repo']['third_party_-_Microsoft:Software:prod'] = {
    'autorefresh' => false,
    'description' => 'Third Party - Microsoft:Software:Prod',
    'enabled' => true,
    'gpgcheck' => false,
    'gpgkey' => '',
    'keeppackages' => false,
    'name' => 'third-party-microsoft-software-prod',
    'priority' => 85,
    'type' => 'rpm-md',
    'url' => 'https://packages.microsoft.com/opensuse/15/prod',
    'file_name' => 'third_party_-_Microsoft:Software:prod'
}
default['packages']['opensuse']['15.4']['repo']['third_party_-_Microsoft:Teams'] = {
    'autorefresh' => false,
    'description' => 'Third Party - Microsoft:Teams',
    'enabled' => true,
    'gpgcheck' => true,
    'gpgkey' => 'https://packages.microsoft.com/keys/microsoft.asc',
    'keeppackages' => false,
    'name' => 'third-party-teams',
    'priority' => 85,
    'type' => 'rpm-md',
    'url' => 'https://packages.microsoft.com/yumrepos/ms-teams',
    'file_name' => 'third_party_-_Microsoft:Teams'
}
default['packages']['opensuse']['15.4']['repo']['third_party_-_packman'] = {
    'autorefresh' => false,
    'description' => 'Third Party - PackMan',
    'enabled' => true,
    'gpgcheck' => false,
    'gpgkey' => '',
    'keeppackages' => false,
    'name' => 'third-party-packman',
    'priority' => 85,
    'type' => 'rpm-md',
    'url' => 'http://ftp.gwdg.de/pub/linux/misc/packman/suse/openSUSE_Leap_15.4/',
    'file_name' => 'third_party_-_packman'
}
default['packages']['opensuse']['15.4']['repo']['third_party_-_Skype-Stable'] = {
    'autorefresh' => false,
    'description' => 'Third Party - Skype:Stable',
    'enabled' => true,
    'gpgcheck' => false,
    'gpgkey' => '',
    'keeppackages' => false,
    'name' => 'third-party-skype-stable',
    'priority' => 85,
    'type' => 'rpm-md',
    'url' => 'https://repo.skype.com/rpm/stable/',
    'file_name' => 'third_party_-_Skype-Stable'
}
default['packages']['opensuse']['15.4']['repo']['third_party_-_Slack'] = {
    'autorefresh' => false,
    'description' => 'Third Party - Slack',
    'enabled' => true,
    'gpgcheck' => true,
    'gpgkey' => 'https://packagecloud.io/slacktechnologies/slack/gpgkey',
    'keeppackages' => false,
    'name' => 'third-party-slack',
    'priority' => 85,
    'type' => 'rpm-md',
    'url' => 'https://packagecloud.io/slacktechnologies/slack/fedora/21/x86_64',
    'file_name' => 'third_party_-_Slack'
}
default['packages']['opensuse']['15.4']['repo']['third_party_-_Teamviewer'] = {
    'autorefresh' => false,
    'enabled' => true,
    'gpgcheck' => true,
    'gpgkey' => 'https://linux.teamviewer.com/pubkey/currentkey.asc',
    'keeppackages' => false,
    'name' => 'third-party-teamviewr',
    'priority' => 85,
    'repo_gpgcheck' => false,
    'type' => 'rpm-md',
    'url' => 'https://linux.teamviewer.com/yum/stable/main/binary-$basearch/',
    'file_name' => 'third_party_-_Teamviewer'
}
default['packages']['opensuse']['15.4']['repo']['third_party_-_Vivaldi'] = {
    'autorefresh' => false,
    'enabled' => true,
    'gpgcheck' => true,
    'gpgkey' => 'https://repo.vivaldi.com/archive/linux_signing_key.pub',
    'keeppackages' => false,
    'name' => 'third-party-vivaldi',
    'priority' => 85,
    'repo_gpgcheck' => false,
    'type' => 'rpm-md',
    'url' => 'http://repo.vivaldi.com/archive/rpm/x86_64',
    'file_name' => 'third_party_-_Vivaldi'
}
default['packages']['opensuse']['15.4']['repo']['third_party_-_VLC'] = {
    'autorefresh' => false,
    'enabled' => true,
    'gpgcheck' => true,
    'gpgkey' => 'http://download.videolan.org/SuSE/15.4/repodata/repomd.xml.key',
    'keeppackages' => false,
    'name' => 'third-party-vlc',
    'priority' => 85,
    'repo_gpgcheck' => false,
    'type' => 'rpm-md',
    'url' => 'http://download.videolan.org/SuSE/15.4/',
    'file_name' => 'third_party_-_VLC'
}
default['packages']['opensuse']['15.4']['repo']['obs_-_Archiving'] = {
    'autorefresh' => false,
    'enabled' => true,
    'gpgcheck' => true,
    'gpgkey' => 'https://download.opensuse.org/repositories/Archiving/openSUSE_Leap_15.4/repodata/repomd.xml.key',
    'keeppackages' => false,
    'name' => 'obs-archiving',
    'priority' => 90,
    'type' => 'rpm-md',
    'url' => 'https://download.opensuse.org/repositories/Archiving/openSUSE_Leap_15.4/',
    'file_name' => 'obs_-_Archiving'
}
default['packages']['opensuse']['15.4']['repo']['obs_-_Artwork:Wallpapers'] = {
    'autorefresh' => false,
    'enabled' => true,
    'gpgcheck' => true,
    'gpgkey' => 'https://download.opensuse.org/repositories/artwork:/wallpapers/15.4/repodata/repomd.xml.key',
    'keeppackages' => false,
    'name' => 'obs-artwork-wallpapers',
    'priority' => 90,
    'type' => 'rpm-md',
    'url' => 'https://download.opensuse.org/repositories/artwork:/wallpapers/15.4/',
    'file_name' => 'obs_-_Artwork:Wallpapers'
}
default['packages']['opensuse']['15.4']['repo']['obs_-_Editors'] = {
    'autorefresh' => false,
    'enabled' => true,
    'gpgcheck' => true,
    'gpgkey' => 'https://download.opensuse.org/repositories/editors/openSUSE_Leap_15.4/repodata/repomd.xml.key',
    'keeppackages' => false,
    'name' => 'obs-editors',
    'priority' => 90,
    'type' => 'rpm-md',
    'url' => 'https://download.opensuse.org/repositories/editors/openSUSE_Leap_15.4/',
    'file_name' => 'obs_-_Editors'
}
default['packages']['opensuse']['15.4']['repo']['obs_-_Emulators'] = {
    'autorefresh' => false,
    'enabled' => true,
    'gpgcheck' => true,
    'gpgkey' => 'https://download.opensuse.org/repositories/Emulators/15.4/repodata/repomd.xml.key',
    'keeppackages' => false,
    'name' => 'obs-emulators',
    'priority' => 90,
    'type' => 'rpm-md',
    'url' => 'https://download.opensuse.org/repositories/Emulators/15.4/',
    'file_name' => 'obs_-_Emulators'
}
default['packages']['opensuse']['15.4']['repo']['obs_-_Filesystems'] = {
    'autorefresh' => false,
    'enabled' => true,
    'gpgcheck' => true,
    'gpgkey' => 'https://download.opensuse.org/repositories/filesystems/15.4/repodata/repomd.xml.key',
    'keeppackages' => false,
    'name' => 'obs-filesystems',
    'priority' => 90,
    'type' => 'rpm-md',
    'url' => 'https://download.opensuse.org/repositories/filesystems/15.4/',
    'file_name' => 'obs_-_Filesystems'
}
default['packages']['opensuse']['15.4']['repo']['obs_-_Games'] = {
    'autorefresh' => false,
    'enabled' => true,
    'gpgcheck' => true,
    'gpgkey' => 'https://download.opensuse.org/repositories/games/15.4/repodata/repomd.xml.key',
    'keeppackages' => false,
    'name' => 'obs-games',
    'priority' => 90,
    'type' => 'rpm-md',
    'url' => 'https://download.opensuse.org/repositories/games/15.4/',
    'file_name' => 'obs_-_Games'
}
default['packages']['opensuse']['15.4']['repo']['obs_-_Games:Tools'] = {
    'autorefresh' => false,
    'enabled' => true,
    'gpgcheck' => true,
    'gpgkey' => 'https://download.opensuse.org/repositories/games:/tools/15.4/repodata/repomd.xml.key',
    'keeppackages' => false,
    'name' => 'obs-games-tools',
    'priority' => 90,
    'type' => 'rpm-md',
    'url' => 'https://download.opensuse.org/repositories/games:/tools/15.4/',
    'file_name' => 'obs_-_Games:Tools'
}
default['packages']['opensuse']['15.4']['repo']['obs_-_Graphics'] = {
    'autorefresh' => false,
    'enabled' => true,
    'gpgcheck' => true,
    'gpgkey' => 'https://download.opensuse.org/repositories/graphics/15.4/repodata/repomd.xml.key',
    'keeppackages' => false,
    'name' => 'obs-graphics',
    'priority' => 90,
    'type' => 'rpm-md',
    'url' => 'https://download.opensuse.org/repositories/graphics/15.4/',
    'file_name' => 'obs_-_Graphics'
}
default['packages']['opensuse']['15.4']['repo']['obs_-_Hardware'] = {
    'autorefresh' => false,
    'enabled' => true,
    'gpgcheck' => true,
    'gpgkey' => 'https://download.opensuse.org/repositories/hardware/15.4/repodata/repomd.xml.key',
    'keeppackages' => false,
    'name' => 'obs-hardware',
    'priority' => 90,
    'type' => 'rpm-md',
    'url' => 'https://download.opensuse.org/repositories/hardware/15.4/',
    'file_name' => 'obs_-_Hardware'
}
default['packages']['opensuse']['15.4']['repo']['obs_-_KDE:Applications'] = {
    'autorefresh' => false,
    'enabled' => true,
    'gpgcheck' => true,
    'gpgkey' => 'https://download.opensuse.org/repositories/KDE:/Applications/KDE_Frameworks5_openSUSE_Leap_15.4/repodata/repomd.xml.key',
    'keeppackages' => false,
    'name' => 'obs-kde-applications',
    'priority' => 80,
    'type' => 'rpm-md',
    'url' => 'https://download.opensuse.org/repositories/KDE:/Applications/KDE_Frameworks5_openSUSE_Leap_15.4/',
    'file_name' => 'obs_-_KDE:Applications'
}
default['packages']['opensuse']['15.4']['repo']['obs_-_KDE:Extra'] = {
    'autorefresh' => false,
    'enabled' => true,
    'gpgcheck' => true,
    'gpgkey' => 'https://download.opensuse.org/repositories/KDE:/Extra/KDE_Frameworks5_openSUSE_Leap_15.4/repodata/repomd.xml.key',
    'keeppackages' => false,
    'name' => 'obs-kde-extra',
    'priority' => 80,
    'type' => 'rpm-md',
    'url' => 'https://download.opensuse.org/repositories/KDE:/Extra/KDE_Applications_openSUSE_Leap_15.4/',
    'file_name' => 'obs_-_KDE:Extra'
}
default['packages']['opensuse']['15.4']['repo']['obs_-_KDE:Frameworks5'] = {
    'autorefresh' => false,
    'enabled' => true,
    'gpgcheck' => true,
    'gpgkey' => 'https://download.opensuse.org/repositories/KDE:/Frameworks5/openSUSE_Leap_15.4/repodata/repomd.xml.key',
    'keeppackages' => false,
    'name' => 'obs-kde-frameworks5',
    'priority' => 80,
    'type' => 'rpm-md',
    'url' => 'https://download.opensuse.org/repositories/KDE:/Frameworks5/openSUSE_Leap_15.4/',
    'file_name' => 'obs_-_KDE:Frameworks5'
}
default['packages']['opensuse']['15.4']['repo']['obs_-_KDE:Qt5'] = {
    'autorefresh' => false,
    'enabled' => true,
    'gpgcheck' => true,
    'gpgkey' => 'https://download.opensuse.org/repositories/KDE:/Qt5/openSUSE_Leap_15.4/repodata/repomd.xml.key',
    'keeppackages' => false,
    'name' => 'obs-kde-qt5',
    'priority' => 80,
    'type' => 'rpm-md',
    'url' => 'https://download.opensuse.org/repositories/KDE:/Qt5/openSUSE_Leap_15.4/',
    'file_name' => 'obs_-_KDE:Qt5'
}
default['packages']['opensuse']['15.4']['repo']['obs_-_Kernel:HEAD:Backport:KMP:Standard'] = {
    'autorefresh' => false,
    'enabled' => true,
    'gpgcheck' => true,
    'gpgkey' => 'https://download.opensuse.org/repositories/Kernel:/HEAD:/Backport:/KMP/standard/repodata/repomd.xml.key',
    'keeppackages' => false,
    'name' => 'obs-kernel-head-backport-kmp-standard',
    'priority' => 90,
    'url' => 'https://download.opensuse.org/repositories/Kernel:/HEAD:/Backport:/KMP/standard/',
    'file_name' => 'obs_-_Kernel:HEAD:Backport:KMP:Standard'
}
default['packages']['opensuse']['15.4']['repo']['obs_-_Kernel:HEAD:Backport:Standard'] = {
    'autorefresh' => false,
    'enabled' => true,
    'gpgcheck' => true,
    'gpgkey' = 'https://download.opensuse.org/repositories/Kernel:/HEAD:/Backport/standard/repodata/repomd.xml.key',
    'keeppackages' => false,
    'name' => 'obs-kernel-head-backport-standard',
    'priority' => 90,
    'url' => 'https://download.opensuse.org/repositories/Kernel:/HEAD:/Backport/standard/',
    'file_name' => 'obs_-_Kernel:HEAD:Backport:Standard'
}
default['packages']['opensuse']['15.4']['repo']['obs_-_Kernel:Tools'] = {
    'autorefresh' => false,
    'enabled' => true,
    'gpgcheck' => true,
    'gpgkey' => 'https://download.opensuse.org/repositories/Kernel:/tools/SLE_15_SP4/repodata/repomd.xml.key',
    'keeppackages' => false,
    'name' => 'obs-kernel-tools',
    'priority' => 90,
    'type' => 'rpm-md',
    'url' => 'https://download.opensuse.org/repositories/Kernel:/tools/SLE_15_SP4/',
    'file_name' => 'obs_-_Kernel:Tools'
}
default['packages']['opensuse']['15.4']['repo']['obs_-_LibreOffice:Factory'] = {
    'autorefresh' => false,
    'enabled' => true,
    'gpgcheck' => true,
    'gpgkey' => 'https://download.opensuse.org/repositories/LibreOffice:/Factory/openSUSE_Leap_15.4/repodata/repomd.xml.key',
    'keeppackages' => false,
    'name' => 'obs-libreoffice-factory',
    'priority' => 90,
    'type' => 'rpm-md',
    'url' => 'https://download.opensuse.org/repositories/LibreOffice:/Factory/openSUSE_Leap_15.4/',
    'file_name' => 'obs_-_LibreOffice:Factory'
}
default['packages']['opensuse']['15.4']['repo']['obs_-_Mozilla'] = {
    'autorefresh' => false,
    'enabled' => true,
    'gpgcheck' => true,
    'gpgkey' => 'https://download.opensuse.org/repositories/mozilla/openSUSE_Leap_15.4/repodata/repomd.xml.key',
    'keeppackages' => false,
    'name' => 'obs-mozilla',
    'priority' => 90,
    'type' => 'rpm-md',
    'url' => 'https://download.opensuse.org/repositories/mozilla/openSUSE_Leap_15.4/',
    'file_name' => 'obs_-_Mozilla'
}
default['packages']['opensuse']['15.4']['repo']['obs_-_Multimedia:Applications'] = {
    'autorefresh' => false,
    'enabled' => true,
    'gpgcheck' => true,
    'gpgkey' => 'https://download.opensuse.org/repositories/multimedia:/apps/15.4/repodata/repomd.xml.key',
    'keeppackages' => false,
    'name' => 'obs-multimedia-applications',
    'priority' => 90,
    'type' => 'rpm-md',
    'url' => 'https://download.opensuse.org/repositories/multimedia:/apps/15.4/',
    'file_name' => 'obs_-_Multimedia:Applications'
}
default['packages']['opensuse']['15.4']['repo']['obs_-_Multimedia:Libraries'] = {
    'autorefresh' => false,
    'enabled' => true,
    'gpgcheck' => true,
    'gpgkey' => 'https://download.opensuse.org/repositories/multimedia:/libs/15.4/repodata/repomd.xml.key',
    'keeppackages' => false,
    'name' => 'obs-multimedia-libraries',
    'priority' => 90,
    'type' => 'rpm-md',
    'url' => 'https://download.opensuse.org/repositories/multimedia:/libs/15.4/',
    'file_name' => 'obs_-_Multimedia:Libraries'
}
default['packages']['opensuse']['15.4']['repo']['obs_-_Network:IDM'] = {
    'autorefresh' => false,
    'enabled' => true,
    'gpgcheck' => true,
    'gpgkey' => 'https://download.opensuse.org/repositories/network:/idm/15.4/repodata/repomd.xml.key',
    'keeppackages' => false,
    'name' => 'obs-network-idm',
    'priority' => 90,
    'type' => 'rpm-md',
    'url' => 'https://download.opensuse.org/repositories/network:/idm/15.4/',
    'file_name' => 'obs_-_Network:IDM'
}
default['packages']['opensuse']['15.4']['repo']['obs_-_Network:IM:Signal'] = {
    'autorefresh' => false,
    'enabled' => true,
    'gpgcheck' => true,
    'gpgkey' => 'https://download.opensuse.org/repositories/network:/im:/signal/15.4/repodata/repomd.xml.key',
    'keeppackages' => false,
    'name' => 'obs-network-im-signal',
    'priority' => 90,
    'type' => 'rpm-md',
    'url' => 'https://download.opensuse.org/repositories/network:/im:/signal/15.4/',
    'file_name' => 'obs_-_Network:IM:Signal'
}
default['packages']['opensuse']['15.4']['repo']['obs_-_Network:LDAP'] = {
    'autorefresh' => false,
    'enabled' => true,
    'gpgcheck' => true,
    'gpgkey' => 'https://download.opensuse.org/repositories/network:/ldap/15.4/repodata/repomd.xml.key',
    'keeppackages' => false,
    'name' => 'obs-network-ldap',
    'priority' => 90,
    'type' => 'rpm-md',
    'url' => 'https://download.opensuse.org/repositories/network:/ldap/15.4/',
    'file_name' => 'obs_-_Network:LDAP'
}
default['packages']['opensuse']['15.4']['repo']['obs_-_Network:SAMBA:ADDC'] = {
    'autorefresh' => false,
    'enabled' => true,
    'gpgcheck' => true,
    'gpgkey' => 'https://download.opensuse.org/repositories/network:/samba:/ADDC/15.4/repodata/repomd.xml.key',
    'keeppackages' => false,
    'name' => 'obs-network-samba-addc',
    'priority' => 90,
    'type' => 'rpm-md',
    'url' => 'https://download.opensuse.org/repositories/network:/samba:/ADDC/15.4/',
    'file_name' => 'obs_-_Network:SAMBA:ADDC'
}
default['packages']['opensuse']['15.4']['repo']['obs_-_Network'] = {
    'autorefresh' => false,
    'enabled' => true,
    'gpgcheck' => true,
    'gpgkey' => 'https://download.opensuse.org/repositories/network/15.4/repodata/repomd.xml.key',
    'keeppackages' => false,
    'name' => 'obs-network',
    'priority' => 90,
    'type' => 'rpm-md',
    'url' => 'https://download.opensuse.org/repositories/network/15.4/',
    'file_name' => 'obs_-_Network'
}
default['packages']['opensuse']['15.4']['repo']['obs_-_Network:Utilities'] = {
    'autorefresh' => false,
    'enabled' => true,
    'gpgcheck' => true,
    'gpgkey' => 'https://download.opensuse.org/repositories/network:/utilities/15.4/repodata/repomd.xml.key',
    'keeppackages' => false,
    'name' => 'obs-network-utilities',
    'priority' => 90,
    'type' => 'rpm-md',
    'url' => 'https://download.opensuse.org/repositories/network:/utilities/15.4/',
    'file_name' => 'obs_-_Network:Utilities'
}
default['packages']['opensuse']['15.4']['repo']['obs_-_Office'] = {
    'autorefresh' => false,
    'enabled' => true,
    'gpgcheck' => true,
    'gpgkey' => 'https://download.opensuse.org/repositories/Office/openSUSE_Leap_15.4/repodata/repomd.xml.key',
    'keeppackages' => false,
    'name' => 'obs-office',
    'priority' => 90,
    'type' => 'rpm-md',
    'url' => 'https://download.opensuse.org/repositories/Office/openSUSE_Leap_15.4/',
    'file_name' => 'obs_-_Office'
}
default['packages']['opensuse']['15.4']['repo']['obs_-_Printing'] = {
    'autorefresh' => false,
    'enabled' => true,
    'gpgcheck' => true,
    'gpgkey' => 'https://download.opensuse.org/repositories/Printing/15.4/repodata/repomd.xml.key',
    'keeppackages' => false,
    'name' => 'obs-printing',
    'priority' => 90,
    'type' => 'rpm-md',
    'url' => 'https://download.opensuse.org/repositories/Printing/15.4/',
    'file_name' => 'obs_-_Printing'
}
default['packages']['opensuse']['15.4']['repo']['obs_-_Publishing'] = {
    'autorefresh' => false,
    'enabled' => true,
    'gpgcheck' => true,
    'gpgkey' => 'https://download.opensuse.org/repositories/Publishing/openSUSE_Leap_15.4/repodata/repomd.xml.key',
    'keeppackages' => false,
    'name' => 'obs-publishing',
    'priority' => 90,
    'type' => 'rpm-md',
    'url' => 'https://download.opensuse.org/repositories/Publishing/openSUSE_Leap_15.4/',
    'file_name' => 'obs_-_Publishing'
}
default['packages']['opensuse']['15.4']['repo']['obs_-_Science'] = {
    'autorefresh' => false,
    'enabled' => true,
    'gpgcheck' => true,
    'gpgkey' => 'https://download.opensuse.org/repositories/science/15.4/repodata/repomd.xml.key',
    'keeppackages' => false,
    'name' => 'obs-science',
    'priority' => 90,
    'type' => 'rpm-md',
    'url' => 'https://download.opensuse.org/repositories/science/15.4/',
    'file_name' => 'obs_-_Science'
}
default['packages']['opensuse']['15.4']['repo']['obs_-_Security:AppArmor'] = {
    'autorefresh' => false,
    'enabled' => true,
    'gpgcheck' => true,
    'gpgkey' => 'https://download.opensuse.org/repositories/security:/apparmor/15.4/repodata/repomd.xml.key',
    'keeppackages' => false,
    'name' => 'obs-security-apparmor',
    'priority' => 90,
    'type' => 'rpm-md',
    'url' => 'https://download.opensuse.org/repositories/security:/apparmor/15.4/',
    'file_name' => 'obs_-_Security:AppArmor'
}
default['packages']['opensuse']['15.4']['repo']['obs_-_Security:Forensics'] = {
    'autorefresh' => false,
    'enabled' => true,
    'gpgcheck' => true,
    'gpgkey' => 'https://download.opensuse.org/repositories/security:/forensics/15.4/repodata/repomd.xml.key',
    'keeppackages' => false,
    'name' => 'obs-security-forensics',
    'priority' => 90,
    'type' => 'rpm-md',
    'url' => 'https://download.opensuse.org/repositories/security:/forensics/15.4/',
    'file_name' => 'obs_-_Security:Forensics'
}
default['packages']['opensuse']['15.4']['repo']['obs_-_Security:IDM'] = {
    'autorefresh' => false,
    'enabled' => true,
    'gpgcheck' => true,
    'gpgkey' => 'https://download.opensuse.org/repositories/security:/idm/15.4/repodata/repomd.xml.key',
    'name' => 'obs-security-idm',
    'keeppackages' => false,
    'priority' => 90,
    'type' => 'rpm-md',
    'url' => 'https://download.opensuse.org/repositories/security:/idm/15.4/',
    'file_name' => 'obs_-_Security:IDM'
}
default['packages']['opensuse']['15.4']['repo']['obs_-_Security:KeePassXC'] = {
    'autorefresh' => false,
    'enabled' => true,
    'gpgcheck' => true,
    'gpgkey' => 'https://download.opensuse.org/repositories/security:/keepassxc/15.4/repodata/repomd.xml.key',
    'keeppackages' => false,
    'name' => 'obs-security-keepassxc',
    'priority' => 90,
    'type' => 'rpm-md',
    'url' => 'https://download.opensuse.org/repositories/security:/keepassxc/15.4/',
    'file_name' => 'obs_-_Security:KeePassXC'
}
default['packages']['opensuse']['15.4']['repo']['obs_-_Security:Logging'] = {
    'autorefresh' => false,
    'enabled' => true,
    'gpgcheck' => true,
    'gpgkey' => 'https://download.opensuse.org/repositories/security:/logging/15.4/repodata/repomd.xml.key',
    'keeppackages' => false,
    'name' => 'obs-security-logging',
    'priority' => 90,
    'type' => 'rpm-md',
    'url' => 'https://download.opensuse.org/repositories/security:/logging/15.4/',
    'file_name' => 'obs_-_Security:Logging'
}
default['packages']['opensuse']['15.4']['repo']['obs_-_Security:NetFilter'] = {
    'autorefresh' => false,
    'enabled' => true,
    'gpgcheck' => true,
    'gpgkey' => 'https://download.opensuse.org/repositories/security:/netfilter/openSUSE_Leap_15.4/repodata/repomd.xml.key',
    'keeppackages' => false,
    'name' => 'obs-security-netfilter',
    'priority' => 90,
    'type' => 'rpm-md',
    'url' => 'https://download.opensuse.org/repositories/security:/netfilter/openSUSE_Leap_15.4/',
    'file_name' => 'obs_-_Security:NetFilter'
}
default['packages']['opensuse']['15.4']['repo']['obs_-_Security:Privacy'] = {
    'autorefresh' => false,
    'enabled' => true,
    'gpgcheck' => true,
    'gpgkey' => 'https://download.opensuse.org/repositories/security:/privacy/15.4/repodata/repomd.xml.key',
    'keeppackages' => false,
    'name' => 'obs-security-privacy',
    'priority' => 90,
    'type' => 'rpm-md',
    'url' => 'https://download.opensuse.org/repositories/security:/privacy/15.4/',
    'file_name' => 'obs_-_Security:Privacy'
}
default['packages']['opensuse']['15.4']['repo']['obs_-_Security'] = {
    'autorefresh' => false,
    'enabled' => true,
    'gpgcheck' => true,
    'gpgkey' => 'https://download.opensuse.org/repositories/security/15.4/repodata/repomd.xml.key',
    'keeppackages' => false,
    'name' => 'obs-security',
    'priority' => 90,
    'type' => 'rpm-md',
    'url' => 'https://download.opensuse.org/repositories/security/15.4/',
    'file_name' => 'obs_-_Security'
}
default['packages']['opensuse']['15.4']['repo']['obs_-_Security:SELinux'] = {
    'autorefresh' => false,
    'enabled' => true,
    'gpgcheck' => true,
    'gpgkey' => 'https://download.opensuse.org/repositories/security:/SELinux/15.4/repodata/repomd.xml.key',
    'keeppackages' => false,
    'name' => 'obs-security-selinux',
    'priority' => 90,
    'type' => 'rpm-md',
    'url' => 'https://download.opensuse.org/repositories/security:/SELinux/15.4/',
    'file_name' => 'obs_-_Security:SELinux'
}
default['packages']['opensuse']['15.4']['repo']['obs_-_Security:Stunnel'] = {
    'autorefresh' => false,
    'enabled' => true,
    'gpgcheck' => true,
    'gpgkey' => 'https://download.opensuse.org/repositories/security:/Stunnel/openSUSE_Leap_15.4_standard/repodata/repomd.xml.key',
    'keeppackages' => false,
    'name' => 'obs-security-stunnel',
    'priority' => 90,
    'type' => 'rpm-md',
    'url' => 'https://download.opensuse.org/repositories/security:/Stunnel/openSUSE_Leap_15.4_standard/',
    'file_name' => 'obs_-_Security:Stunnel'
}
default['packages']['opensuse']['15.4']['repo']['obs_-_Server:Database:PostgreSQL'] = {
    'autorefresh' => false,
    'enabled' => true,
    'gpgcheck' => true,
    'gpgkey' => 'https://download.opensuse.org/repositories/server:/database:/postgresql/15.4/repodata/repomd.xml.key',
    'keeppackages' => false,
    'name' => 'obs-server-postgresql',
    'priority' => 90,
    'type' => 'rpm-md',
    'url' => 'https://download.opensuse.org/repositories/server:/database:/postgresql/15.4/',
    'file_name' => 'obs_-_Server:Database:PostgreSQL'
}
default['packages']['opensuse']['15.4']['repo']['obs_-_Server:Database'] = {
    'autorefresh' => false,
    'enabled' => true,
    'gpgcheck' => true,
    'gpgkey' => 'https://download.opensuse.org/repositories/server:/database/15.4/repodata/repomd.xml.key',
    'keeppackages' => false,
    'name' => 'obs-server-database',
    'priority' => 90,
    'type' => 'rpm-md',
    'url' => 'https://download.opensuse.org/repositories/server:/database/15.4/',
    'file_name' => 'obs_-_Server:Database'
}
default['packages']['opensuse']['15.4']['repo']['obs_-_Server:DNS'] = {
    'autorefresh' => false,
    'enabled' => true,
    'gpgcheck' => true,
    'gpgkey' => 'https://download.opensuse.org/repositories/server:/dns/15.4/repodata/repomd.xml.key',
    'keeppackages' => false,
    'name' => 'obs-server-dns',
    'gpgautoimportkeys' => true,
    'priority' => 90,
    'type' => 'rpm-md',
    'url' => 'https://download.opensuse.org/repositories/server:/dns/15.4/',
    'file_name' => 'obs_-_Server:DNS'
}
default['packages']['opensuse']['15.4']['repo']['obs_-_Server:HTTP'] = {
    'autorefresh' => false,
    'enabled' => true,
    'gpgcheck' => true,
    'gpgkey' => 'https://download.opensuse.org/repositories/server:/http/15.4/repodata/repomd.xml.key',
    'keeppackages' => false,
    'name' => 'obs-server-http',
    'gpgautoimportkeys' => true,
    'priority' => 90,
    'type' => 'rpm-md',
    'url' => 'https://download.opensuse.org/repositories/server:/http/15.4/',
    'file_name' => 'obs_-_Server:HTTP'
}
default['packages']['opensuse']['15.4']['repo']['obs_-_Server:Mail'] = {
    'autorefresh' => false,
    'enabled' => true,
    'gpgcheck' => true,
    'gpgkey' => 'https://download.opensuse.org/repositories/server:/mail/15.4/repodata/repomd.xml.key',
    'keeppackages' => false,
    'name' => 'obs-server-mail',
    'priority' => 90,
    'type' => 'rpm-md',
    'url' => 'https://download.opensuse.org/repositories/server:/mail/15.4/',
    'file_name' => 'obs_-_Server:Mail'
}
default['packages']['opensuse']['15.4']['repo']['obs_-_Server:Monitoring'] = {
    'autorefresh' => false,
    'enabled' => true,
    'gpgcheck' => true,
    'gpgkey' => 'https://download.opensuse.org/repositories/server:/monitoring/15.4/repodata/repomd.xml.key',
    'keeppackages' => false,
    'priority' => 90,
    'type' => 'rpm-md',
    'url' => 'https://download.opensuse.org/repositories/server:/monitoring/15.4/',
    'file_name' => 'obs_-_Server:Monitoring'
}
default['packages']['opensuse']['15.4']['repo']['obs_-_Server:PHP:Applications'] = {
    'autorefresh' => false,
    'enabled' => true,
    'gpgcheck' => true,
    'gpgkey' => 'https://download.opensuse.org/repositories/server:/php:/applications/15.4/repodata/repomd.xml.key',
    'keeppackages' => false,
    'gpgautoimportkeys' => true,
    'priority' => 90,
    'type' => 'rpm-md',
    'url' => 'https://download.opensuse.org/repositories/server:/php:/applications/15.4/',
    'file_name' => 'obs_-_Server:PHP:Applications'
}
default['packages']['opensuse']['15.4']['repo']['obs_-_Server:PHP:Extensions'] = {
    'autorefresh' => false,
    'enabled' => true,
    'gpgcheck' => true,
    'gpgkey' => 'https://download.opensuse.org/repositories/server:/php:/extensions/15.4/repodata/repomd.xml.key',
    'keeppackages' => false,
    'gpgautoimportkeys' => true,
    'priority' => 90,
    'type' => 'rpm-md',
    'url' => 'https://download.opensuse.org/repositories/server:/php:/extensions/15.4/',
    'file_name' => 'obs_-_Server:PHP:Extensions'
}
default['packages']['opensuse']['15.4']['repo']['obs_-_Server:Proxy'] = {
    'autorefresh' => false,
    'enabled' => true,
    'gpgcheck' => true,
    'gpgkey' => 'https://download.opensuse.org/repositories/server:/proxy/15.4/repodata/repomd.xml.key',
    'keeppackages' => false,
    'priority' => 90,
    'type' => 'rpm-md',
    'url' => 'https://download.opensuse.org/repositories/server:/proxy/15.4/',
    'file_name' => 'obs_-_Server:Proxy'
}
default['packages']['opensuse']['15.4']['repo']['obs_-_Shells'] = {
    'autorefresh' => false,
    'enabled' => true,
    'gpgcheck' => true,
    'gpgkey' => 'https://download.opensuse.org/repositories/shells/openSUSE_Leap_15.4/repodata/repomd.xml.key',
    'keeppackages' => false,
    'priority' => 90,
    'type' => 'rpm-md',
    'url' => 'https://download.opensuse.org/repositories/shells/openSUSE_Leap_15.4/',
    'file_name' => 'obs_-_Shells'
}
default['packages']['opensuse']['15.4']['repo']['obs_-_Shells:Zsh-users:Antigen'] = {
    'autorefresh' => false,
    'enabled' => true,
    'gpgcheck' => true,
    'gpgkey' => 'http://download.opensuse.org/repositories/shells:/zsh-users:/antigen/SLE_15/repodata/repomd.xml.key',
    'keeppackages' => false,
    'priority' => 90,
    'type' => 'rpm-md',
    'url' => 'http://download.opensuse.org/repositories/shells:/zsh-users:/antigen/SLE_15/',
    'file_name' => 'obs_-_Shells:Zsh-users:Antigen'
}
default['packages']['opensuse']['15.4']['repo']['obs_-_Shells:Zsh-users:zsh-autosuggestions'] = {
    'autorefresh' => false,
    'enabled' => true,
    'gpgcheck' => true,
    'gpgkey' => 'http://download.opensuse.org/repositories/shells:/zsh-users:/zsh-autosuggestions/15.4/repodata/repomd.xml.key',
    'keeppackages' => false,
    'priority' => 90,
    'type' => 'rpm-md',
    'url' => 'http://download.opensuse.org/repositories/shells:/zsh-users:/zsh-autosuggestions/15.4/',
    'file_name' => 'obs_-_Shells:Zsh-users:zsh-autosuggestions'
}
default['packages']['opensuse']['15.4']['repo']['obs_-_Shells:Zsh-users:zsh-completions'] = {
    'autorefresh' => false,
    'enabled' => true,
    'gpgcheck' => true,
    'gpgkey' => 'http://download.opensuse.org/repositories/shells:/zsh-users:/zsh-completions/15.4/repodata/repomd.xml.key',
    'keeppackages' => false,
    'priority' => 90,
    'type' => 'rpm-md',
    'url' => 'http://download.opensuse.org/repositories/shells:/zsh-users:/zsh-completions/15.4/',
    'file_name' => 'obs_-_Shells:Zsh-users:zsh-completions'
}
default['packages']['opensuse']['15.4']['repo']['obs_-_Shells:Zsh-users:zsh-history-substring-search'] = {
    'autorefresh' => false,
    'enabled' => true,
    'gpgcheck' => true,
    'gpgkey' => 'http://download.opensuse.org/repositories/shells:/zsh-users:/zsh-history-substring-search/15.4/repodata/repomd.xml.key',
    'keeppackages' => false,
    'priority' => 90,
    'type' => 'rpm-md',
    'url' => 'http://download.opensuse.org/repositories/shells:/zsh-users:/zsh-history-substring-search/15.4/',
    'file_name' => 'obs_-_Shells:Zsh-users:zsh-history-substring-search'
}
default['packages']['opensuse']['15.4']['repo']['obs_-_Shells:Zsh-users:zsh-syntax-highlighting'] = {
    'autorefresh' => false,
    'enabled' => true,
    'gpgcheck' => true,
    'gpgkey' => 'http://download.opensuse.org/repositories/shells:/zsh-users:/zsh-syntax-highlighting/15.4/repodata/repomd.xml.key',
    'keeppackages' => false,
    'priority' => 90,
    'type' => 'rpm-md',
    'url' => 'http://download.opensuse.org/repositories/shells:/zsh-users:/zsh-syntax-highlighting/15.4/',
    'file_name' => 'obs_-_Shells:Zsh-users:zsh-syntax-highlighting'
}
default['packages']['opensuse']['15.4']['repo']['obs_-_SystemManagement'] = {
    'autorefresh' => false,
    'enabled' => true,
    'gpgcheck' => true,
    'gpgkey' => 'https://download.opensuse.org/repositories/systemsmanagement/15.4/repodata/repomd.xml.key',
    'keeppackages' => false,
    'priority' => 90,
    'type' => 'rpm-md',
    'url' => 'https://download.opensuse.org/repositories/systemsmanagement/15.4/',
    'file_name' => 'obs_-_SystemManagement'
}
default['packages']['opensuse']['15.4']['repo']['obs_-_System:PackageManager'] = {
    'autorefresh' => false,
    'enabled' => true,
    'gpgcheck' => true,
    'gpgkey' => 'https://download.opensuse.org/repositories/system:/packagemanager/15.4/repodata/repomd.xml.key',
    'keeppackages' => false,
    'priority' => 90,
    'type' => 'rpm-md',
    'url' => 'https://download.opensuse.org/repositories/system:/packagemanager/15.4/',
    'file_name' => 'obs_-_System:PackageManager'
}
default['packages']['opensuse']['15.4']['repo']['obs_-_Utilities'] = {
    'autorefresh' => false,
    'enabled' => true,
    'gpgcheck' => true,
    'gpgkey' => 'https://download.opensuse.org/repositories/utilities/15.4/repodata/repomd.xml.key',
    'keeppackages' => false,
    'priority' => 90,
    'type' => 'rpm-md',
    'url' => 'https://download.opensuse.org/repositories/utilities/15.4/',
    'file_name' => 'obs_-_Utilities'
}
default['packages']['opensuse']['15.4']['repo']['obs_-_X11:Utilities'] = {
    'autorefresh' => false,
    'enabled' => true,
    'gpgcheck' => true,
    'gpgkey' => 'https://download.opensuse.org/repositories/X11:/Utilities/15.4/repodata/repomd.xml.key',
    'keeppackages' => false,
    'priority' => 90,
    'type' => 'rpm-md',
    'url' => 'https://download.opensuse.org/repositories/X11:/Utilities/15.4/',
    'file_name' => 'obs_-_X11:Utilities'
}
default['packages']['opensuse']['15.4']['repo']['obs_-_X11:XOrg'] = {
    'autorefresh' => false,
    'enabled' => true,
    'gpgcheck' => true,
    'gpgkey' => 'https://download.opensuse.org/repositories/X11:/XOrg/openSUSE_Leap_15.4/repodata/repomd.xml.key',
    'keeppackages' => false,
    'priority' => 90,
    'type' => 'rpm-md',
    'url' => 'https://download.opensuse.org/repositories/X11:/XOrg/openSUSE_Leap_15.4/',
    'file_name' => 'obs_-_X11:XOrg'
}
default['packages']['opensuse']['15.4']['repo']['obs_-_YaST:Head'] = {
    'autorefresh' => false,
    'enabled' => true,
    'gpgcheck' => true,
    'gpgkey' => 'https://download.opensuse.org/repositories/YaST:/Head/15.4/repodata/repomd.xml.key',
    'keeppackages' => false,
    'priority' => 90,
    'type' => 'rpm-md',
    'url' => 'https://download.opensuse.org/repositories/YaST:/Head/15.4/',
    'file_name' => 'obs_-_YaST:Head'
}
default['packages']['opensuse']['15.4']['repo']['obs_-_Zypp:Head'] = {
    'autorefresh' => false,
    'enabled' => true,
    'gpgkey' => 'https://download.opensuse.org/repositories/zypp:/SLE-15-SP4-Branch/openSUSE_Leap_15.4/repodata/repomd.xml.key',
    'keeppackages' => false,
    'priority' => 90,
    'type' => 'rpm-md',
    'url' => 'https://download.opensuse.org/repositories/zypp:/SLE-15-SP4-Branch/openSUSE_Leap_15.4/',
    'file_name' => 'obs_-_Zypp:Head'
}
