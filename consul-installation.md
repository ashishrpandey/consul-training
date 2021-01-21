## Download and Install consul on both Server and Client

Download and install consul

     sudo su 
     wget https://releases.hashicorp.com/consul/1.8.0/consul_1.8.0_linux_amd64.zip   
     unzip consul_1.8.0_linux_amd64.zip
     mv consul /usr/bin/
     
Verify if its working 

     consul
     
Enable autocomplete 
     
     consul -autocomplete-install
     complete -C /usr/bin/consul consul 
     
## Start the consul as server (Preferably on Nomad-server)

Create the /etc/consul.d/ directory  

     mkdir -p /etc/consul.d/ 

Copy the content from consul.hcl  in the /etc/consul.d/ 

     git clone https://github.com/ashishrpandey/consul-training
     mkdir -p /etc/consul.d/ 
     cd consul-training/
     mv consul.hcl /etc/consul.d/consul.hcl 
     
Launch Consul agent as server 

     consul agent -ui  -server -bootstrap-expect=1 -data-dir=/tmp/consul -node=machine -bind=<Private IP of the server/self> -config-dir=/etc/consul.d -client=0.0.0.0 &


## Start the consul agent as client  (On Nomad-client)

  Copy the content from consul.hcl  in the /etc/consul.d/ 

     sudo su 
     git clone https://github.com/ashishrpandey/consul-training
     cd consul-training/
     mkdir -p /etc/consul.d/ 
     mv consul.hcl /etc/consul.d/consul.hcl 

Launch the consul agent as client

     consul agent -ui  -client -data-dir=/tmp/consul -node=client1 -bind=<private IP of self> -config-dir=/etc/consul.d -client=0.0.0.0 &

Open a new termial of the client and
Join the consul server

     consul join <private IP of the Server>



 ## On the server 
 
Run in a separate window on the same machine 

      consul members
      
      
      
## See the web UI

In the browser open - 

- {publicIP of the server}:8500
     
     
In another browser open - 

- {publicIP of the client}:8500

