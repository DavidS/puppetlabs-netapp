require 'spec_helper_acceptance'

describe 'export_rule' do
  it 'makes a export_rule' do
    pp=<<-EOS
node 'vsim-01' {
}
node 'vserver-01' {
  netapp_export_policy { 'export_rule_test' :
    ensure => present,
  } 
  netapp_export_rule { 'export_rule_test' :
    ensure            => present,
    clientmatch       => '10.0.0.0/8',
    protocol          => ['nfs'],
    superusersecurity => 'none',
    rorule            => ['none', 'sys'],
    rwrule            => ['none', 'sys'],
  }
}
    EOS
    make_site_pp(pp)
    run_device(:allow_changes => true)
    run_device(:allow_changes => false)
  end

  it 'deletes a export_rule' do
    pp=<<-EOS
node 'vsim-01' {
}
node 'vserver-01' {
  netapp_export_policy { 'export_rule_test' :
    ensure => absent,
  } 
  netapp_export_rule { 'export_rule_test' :
    ensure            => absent,
    clientmatch       => '10.0.0.0/8',
    protocol          => ['nfs'],
    superusersecurity => 'none',
    rorule            => ['sys', 'none'],
    rwrule            => ['sys', 'none'],
  }
}
    EOS
    make_site_pp(pp)
    run_device(:allow_changes => true)
    run_device(:allow_changes => false)
  end
end
