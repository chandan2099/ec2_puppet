# Append thisat the bottom of /etc/puppetlabs/puppet/manifests/site.pp
node 'ip-172-31-38-119.us-west-2.compute.internal'{
  # Note the quotes around the name! Node names can have characters that
  # aren't legal for class names, so you can't always use bare, unquoted
  # strings like we dowith classes.
  # Any resource or classdeclaration can go inside here. For now:
  file {'testfile':
    path    => '/tmp/testfile',
    ensure  => present,
    mode    => 0640,
    content => "I'm a DEVELOPMENT file.",
  }
}

