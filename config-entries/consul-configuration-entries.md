
## Create/Update a configuration entry

First Create required .hcl file for corresponding configuration entries (e.g. proxy-defaults.hcl)

Apply the config 

      consul config write proxy-defaults.hcl
      
      
## Read configuration entry

  consul config list -kind proxy-defaults
  consul config read -kind proxy-defaults -name global 

## Delete configuration entry
 
  consul config delete -kind proxy-defaults -name global
  

## L7 Traffic Management

      
