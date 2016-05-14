Vagrant.configure(2) do |config|
    config.vm.box = "ubuntu/wily64"
    config.vm.synced_folder "./", "/home/vagrant/fpv9-haskell-workshop"
    config.vm.provision "shell", path: "provision.sh"
    config.vm.withgui = true
    config.vm.provider "virtualbox" do |v|
        v.memory = 2048
    end
end

