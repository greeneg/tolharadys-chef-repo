default['packages']['opensuse']['15.4']['repo']['obs_-_Devel:Languages:Go'] = {
    'autorefresh' => false,
    'description' => 'OBS - Devel:Languages:Go',
    'enabled' => true,
    'gpgcheck' => true,
    'gpgautoimportkeys' => true,
    'gpgkey' => 'https://download.opensuse.org/repositories/devel:/languages:/go/15.4/repodata/repomd.xml.key',
    'keeppackages' => false,
    'name' => 'obs-devel_languages_go',
    'priority' => 90,
    'type' => 'rpm-md',
    'url' => 'https://download.opensuse.org/repositories/devel:/languages:/go/15.4/',
    'file_name' => 'obs_-_Devel:Languages:Go'
}
default['packages']['opensuse']['15.4']['repo']['obs_-_Devel:Languages:NodeJS'] = {
    'autorefresh' => false,
    'enabled' => true,
    'gpgcheck' => true,
    'gpgkey' => 'https://download.opensuse.org/repositories/devel:/languages:/nodejs/15.4/repodata/repomd.xml.key',
    'keeppackages' => false,
    'priority' => 90,
    'type' => 'rpm-md',
    'url' => 'https://download.opensuse.org/repositories/devel:/languages:/nodejs/15.4/',
    'file_name' => 'obs_-_Devel:Languages:NodeJS'
}
default['packages']['opensuse']['15.4']['repo']['obs_-_Devel:Languages:Perl'] = {
    'autorefresh' => false,
    'enabled' => true,
    'gpgcheck' => true,
    'gpgkey' => 'https://download.opensuse.org/repositories/devel:/languages:/perl/15.4/repodata/repomd.xml.key',
    'keeppackages' => false,
    'priority' => 90,
    'type' => 'rpm-md',
    'url' => 'https://download.opensuse.org/repositories/devel:/languages:/perl/15.4/',
    'file_name' => 'obs_-_Devel:Languages:Perl'
}
default['packages']['opensuse']['15.4']['repo']['obs_-_Devel:Languages:Python'] = {
    'autorefresh' => false,
    'enabled' => true,
    'gpgcheck' => true,
    'gpgkey' => 'https://download.opensuse.org/repositories/devel:/languages:/python/15.4/repodata/repomd.xml.key',
    'keeppackages' => false,
    'priority' => 90,
    'type' => 'rpm-md',
    'url' => 'https://download.opensuse.org/repositories/devel:/languages:/python/15.4/',
    'file_name' => 'obs_-_Devel:Languages:Python'
}
default['packages']['opensuse']['15.4']['repo']['obs_-_Devel:Languages:Ruby:Extensions'] = {
    'autorefresh' => false,
    'enabled' => true,
    'gpgcheck' => true,
    'gpgkey' => 'https://download.opensuse.org/repositories/devel:/languages:/ruby:/extensions/15.4/repodata/repomd.xml.key',
    'keeppackages' => false,
    'priority' => 90,
    'type' => 'rpm-md',
    'url' => 'https://download.opensuse.org/repositories/devel:/languages:/ruby:/extensions/15.4/',
    'file_name' => 'obs_-_Devel:Languages:Ruby:Extensions'
}
default['packages']['opensuse']['15.4']['repo']['obs_-_Devel:Languages:Ruby'] = {
    'autorefresh' => false,
    'enabled' => true,
    'gpgcheck' => true,
    'gpgkey' => 'https://download.opensuse.org/repositories/devel:/languages:/ruby/15.4/repodata/repomd.xml.key',
    'keeppackages' => false,
    'priority' => 90,
    'type' => 'rpm-md',
    'url' => 'https://download.opensuse.org/repositories/devel:/languages:/ruby/15.4/',
    'file_name' => 'obs_-_Devel:Languages:Ruby'
}
default['packages']['opensuse']['15.4']['repo']['obs_-_Devel:Tools'] = {
    'autorefresh' => false,
    'enabled' => true,
    'keeppackages' => false,

    'priority' => 90,
    'type' => 'rpm-md',
    'url' => 'https://download.opensuse.org/repositories/devel:/tools/15.4/',
    'file_name' => 'obs_-_Devel:Tools'
}
default['packages']['opensuse']['15.4']['repo']['third_party_-_VSCode'] = {
    'autorefresh' => false,
    'enabled' => true,
    'gpgcheck' => false,
    'gpgkey' => 'https://packages.microsoft.com/keys/microsoft.asc',
    'keeppackages' => false,
    'priority' => 85,
    'type' => 'rpm-md',
    'url' => 'https://packages.microsoft.com/yumrepos/vscode',
    'file_name' => 'third_party_-_VSCode'
}