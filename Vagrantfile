Vagrant.configure("2") do |config|
  config.vm.box = "precise64"
  config.vm.provision "docker",
    images: ["ubuntu"]
  config.vm.network :forwarded_port, host: 5050, guest: 5050
end