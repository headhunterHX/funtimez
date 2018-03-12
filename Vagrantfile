# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  # Used box
  config.vm.box = "ubuntu/trusty64"

  # Accessing "localhost:8080" will access port 80 on the guest machine.
  config.vm.network :forwarded_port, guest: 80, host: 8080

  # Private Network
  config.vm.network :private_network, ip: "192.168.68.8"

  # Install hacky stuff
  config.vm.provision :shell, :path => ".provision/helloworld.sh"

  # Docker stuff
  config.vm.provision :docker
  config.vm.hostname = "docker-host"
  config.vm.network :forwarded_port, guest: 80, host: 4567
  config.vm.provision :docker_compose, yml: "/dockertest/docker-compose.yml", run:"always"
end
