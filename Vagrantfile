Vagrant.configure(2) do |config|

  config.vm.provider "virtualbox" do |v|
    v.memory = 2048
    v.cpus = 2
  end

  # The following section is used when working with proxy
  if Vagrant.has_plugin?("vagrant-proxyconf")
    config.proxy.http     = "http://10.55.76.15:8080"
    config.proxy.https    = "https://10.55.76.15:8080"
    config.proxy.no_proxy = "localhost,127.0.0.1"
  end  

  config.vm.box = "ubuntu/trusty64"
  
  config.vm.provision('shell', path: 'prov/install.go.sh')
  config.vm.provision('shell', path: 'prov/install.git.sh')
  config.vm.provision('shell', inline: 'sudo cp /vagrant/prov/set.gopath.sh /etc/profile.d/set.gopath.sh')

end
