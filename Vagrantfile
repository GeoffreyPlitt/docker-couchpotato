Vagrant.configure("2") do |config|
  config.vm.box = "precise64"
  config.vm.provision "docker",
    images: ["ubuntu"]

  config.vm.network :forwarded_port, host: 5050, guest: 5050
  config.vm.provision "shell",
    inline: "docker build -t mine . ; docker run -d -p 5050:5050 mine"
end