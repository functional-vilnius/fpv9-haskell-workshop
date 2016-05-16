Vagrant.configure(2) do |config|
    config.vm.box = "ubuntu/wily64"
    config.vm.synced_folder "./", "/home/vagrant/fpv9-haskell-workshop",
      :owner => "vagrant",
      :group => "vagrant",
      mount_options: ["dmode=775,fmode=664"]
    config.vm.provision "shell", path: "provision.sh"
    config.vm.provider "virtualbox" do |v|
        v.gui = true
        v.memory = 2048
    end
end
