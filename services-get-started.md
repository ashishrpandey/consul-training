## Prerequisite

- Nomad is running locally  (https://github.com/ashishrpandey/nomad-training/blob/master/nomad-installation.md)
- A service (flaskapp) is already running (https://github.com/ashishrpandey/nomad-training/blob/master/flaskapp-job.md)
- Consul is installed on the machine locally (https://github.com/ashishrpandey/consul-training/blob/master/consul-installation.md)

Create a directory in /etc/

    cd /etc/
    mkdir consul.d
    
Create a config file for the flaskapp service

    $ echo '{
      "service": {
        "name": "flaskapp",
        "tags": [
          "rails"
        ],
        "port": 80
      }
    }' > ./consul.d/web.json

Start the consul server in stand-alone mode [Not for production]

    consul agent -dev -config-dir=./consul.d
    
Open a duplicate terminal on the same machine 

    dig @127.0.0.1 -p 8600 flaskapp.service.consul
    
The Above command will return an answer setion for A record 
    
    ;; ANSWER SECTION:
    flaskapp.service.consul. 0      IN      A       127.0.0.1

Also check the SRV record by running the command below - 

     dig @127.0.0.1 -p 8600 flaskapp.service.consul SRV

The answer includes - 

    ;; ANSWER SECTION:
    flaskapp.service.consul. 0      IN      SRV     1 1 80 machine1.node.dc1.consul.

    ;; ADDITIONAL SECTION:
    machine1.node.dc1.consul. 0     IN      A       127.0.0.1
    machine1.node.dc1.consul. 0     IN      TXT     "consul-network-segment="


you can also check by accessing HTTP API 

    curl http://localhost:8500/v1/catalog/service/flaskapp
    
The above command shall give a json output with the service details 




