require 'chef/provisioning/docker_driver'

machine_image 'ubuntu14' do
  machine_options :docker_options => {
    :base_image => {
      :name => 'ubuntu',
      :repository => 'ubuntu',
      :tag => '14.04'
    }
  }
end

machine_image 'centos7' do
  machine_options :docker_options => {
    :base_image => {
      :name => 'centos',
      :repository => 'centos',
      :tag => '7'
    }
  }
end

