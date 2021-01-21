
## ON Client machine 
## launch two services (dashboard and counting services) communicating with each other 

Clone the code on your system 

    git clone https://github.com/ashishrpandey/consul-training/
    cd consul-training/

Move the service files to config directory 

    mv counting.json /etc/consul.d
    mv dashboard.json /etc/consul.d

Move the binaries to /usr/bin directory 

    mv counting-service /usr/bin/
    mv dashboard-service /usr/bin/

In the current terminal 

    PORT=80 dashboard-service

In a duplicate terminal on same machine launch counting-service on PORT 9001

    PORT=9001 counting-service

Reload consul to read the new files 

    consul reload

Open the URL in the browser to check the dashboard

    http://public-ip-of-server:80





