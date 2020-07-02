     yum update -y
     pwd
     wget https://releases.hashicorp.com/consul/1.8.0/consul_1.8.0_linux_amd64.zip
     ls
     unzip consul_1.8.0_linux_amd64.zip
     ls
     mv consul /usr/bin/
     consul
     consul agent -dev -node machine
      consul members
      consul agent -dev
      consul members
      ps -eaf |grep consul
      kill -9 21640
      kill -9 21631
      ps -eaf |grep consul
      consul agent -dev
      consul agent -dev -enable-script-checks -config-dir=./consul.d
