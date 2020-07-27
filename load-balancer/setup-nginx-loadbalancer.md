
launch 3 instances of a demo webapp 

nomad run webapp.nomad

Run the nginx job

nomad run nginx.nomad

Check the status of nginx to get the allocation id 

nomad status nginx

Check the endpoints in the nginx load balancer 

nomad alloc fs <alloc-id> nginx/local/load-balancer.conf



Verify 

curl nginx.service.consul:8080
