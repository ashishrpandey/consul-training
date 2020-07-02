Download consul

     wget https://releases.hashicorp.com/consul/1.8.0/consul_1.8.0_linux_amd64.zip

Install consul
     
     unzip consul_1.8.0_linux_amd64.zip
     ls
     mv consul /usr/bin/
     
Verify if its working 

     consul
     
Start the consul as server and as client on the same machine

     consul agent -dev -node machine
     
Run in a separate window on the same machine 

      consul members

Better way to run it will be - 

      consul agent -dev -enable-script-checks -config-dir=./consul.d
