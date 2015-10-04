Vagrant.configure(2) do |config|

  config.vm.provider "virtualbox" do |v|
    v.memory = 2048
    v.cpus = 2
  end

  config.vm.box = "ubuntu/trusty64"
  
  config.vm.provision('shell', path: 'prov/install.go.sh')
  config.vm.provision('shell', path: 'prov/install.git.sh')
  config.vm.provision('shell', inline: 'sudo cp /vagrant/prov/set.gopath.sh /etc/profile.d/set.gopath.sh')

end
