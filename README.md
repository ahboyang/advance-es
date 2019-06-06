# advance-es

es-terraform 

This is the terrform script to provision 3 t2-micro ec2 instance on AWS the security group inplaced to restrict communication is private

es-ansible

After spinning up the instnaces, add the ec2 instances as ansible remote host and runing the following script in sequence:

1) es-base.yml 

   this script will deploy the elasticsearch cluster with the basic configuration 

2) post-ins.yml

   this script will create admin user and enable ssl feature 
