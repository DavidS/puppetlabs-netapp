require 'spec_helper_acceptance'

describe 'ldap_config' do
# this requires an extra step of setting up a cifs service on the vserver
# commented out, as it should only run as part of a manual test

#  it 'makes a ldap_config' do
#    pp=<<-EOS
#node 'vsim-01' {
#  netapp_vserver { 'vserver-01':
#    ensure          => present,
#    rootvol         => 'vserver_01_root',
#    rootvolaggr     => 'aggr1',
#    rootvolsecstyle => 'unix',
#  }
#  netapp_lif { 'nfs_lif':
#    ensure        => present,
#    homeport      => 'e0c',
#    homenode      => 'VSIM-01',
#    address       => '10.0.207.5',
#    vserver       => 'vserver-01',
#    netmask       => '255.255.255.0',
#    dataprotocols => ['nfs','cifs'],
#  }
#  netapp_lif { 'iscsi_lif':
#    ensure        => present,
#    homeport      => 'e0c',
#    homenode      => 'VSIM-01',
#    address       => '10.0.207.6',
#    vserver       => 'vserver-01',
#    netmask       => '255.255.255.0',
#    dataprotocols => 'iscsi',
#  }
#}
#node 'vserver-01' {
#  netapp_ldap_client { 'ldapclient2':
#    ensure                     => 'present',
#    base_dn                    => 'DC=',
#    base_scope                 => 'subtree',
#    bind_as_cifs_server        => 'true',
#    group_scope                => 'subtree',
#    min_bind_level             => 'sasl',
#    netgroup_byhost_scope      => 'subtree',
#    is_netgroup_byhost_enabled => 'false',
#    netgroup_scope             => 'subtree',
#    query_timeout              => '3',
#    schema                     => 'RFC-2307',
#    servers                    => ['1.1.1.1', '2.2.2.2', '3.3.3.3'],
#    tcp_port                   => '389',
#    use_start_tls              => 'false',
#    user_scope                 => 'subtree',
#  }
#  netapp_ldap_config { 'ldapclient2':
#    ensure => 'present',
#    client_enabled => 'true',
#  }
#}
#    EOS
#    make_site_pp(pp)
#    run_device(:allow_changes => true)
#    run_device(:allow_changes => false)
#  end
#
#  it 'edit a ldap_config' do
#    pp=<<-EOS
#netapp_ldap_config { 'ldapclient2':
#  ensure => 'present',
#  client_enabled => 'false',
#}
#    EOS
#    make_site_pp(pp)
#    run_device(:allow_changes => true)
#    run_device(:allow_changes => false)
#  end
#
# it 'delete a ldap_config' do
#    pp=<<-EOS
#netapp_ldap_config { 'ldapclient2':
#  ensure => 'absent',
#  client_enabled => 'false',
#}
#    EOS
#    make_site_pp(pp)
#    run_device(:allow_changes => true)
#    run_device(:allow_changes => false)
#  end
end
