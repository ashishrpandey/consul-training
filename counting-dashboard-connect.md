## Controlling the inter-service-communication with consul-connet using sidecar-proxy


Make sure that the config file for both the services are properly placed and loaded by the consul 

Run both the services - 

    PORT=9003 counting-service
    PORT=9002 COUNTING_SERVICE_URL=http://localhost:9001 dashboard-service


Start the sidecar for both the services 

    consul connect proxy -sidecar-for counting
    consul connect proxy -sidecar-for dashboard

Go to the consul dashboard->intentions and modify the policy 

OTR - try the commands below and verify the dashboard page for the effect 

    consul intention create -deny <source> <destination>
    consul intention delete <source> <destination>
    
    

