require 'chef/provisioning'

machine 'controller' do
  machine_options :docker_options => {
    :command => '/bin/bash'
  }

  from_image 'ubuntu14'
  role 'allinone-compute'
  role 'os-image-upload'

  chef_environment 'vagrant-aio-nova'

  file('/etc/chef/openstack_data_bag_secret',
        "#{File.dirname(__FILE__)}/.chef/encrypted_data_bag_secret")
  converge true
end
