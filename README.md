# advance-es

es-terraform 

This is the terrform script to provision 3 t2-micro ec2 instance on AWS the security group inplaced to restrict communication is private

es-ansible

After spinning up the instnaces, add the ec2 instances as ansible remote host and runing the following script in sequence:

1) es-base.yml 

   this script will deploy the elasticsearch cluster with the basic configuration 

2) post-ins.yml

   this script will create admin user and enable ssl feature 




1. What did you choose to automate the provisioning and bootstrapping of the instance? Why?
   Ans: Terraform with Ansible. Terraform is normally used to provision resouces with script and it's platform independent. To automate 
        the provisioning of resouce within the instance, Ansible is more flexible and easy to use.
        
2. How did you choose to secure ElasticSearch? Why?
   Ans: X-Pack feature developed by ElaticSeach. It's the official solution and feature that come with latest Elastic stack.
   
3. How would you monitor this instance? What metrics would you monitor?
   Ans: EC2 instance can be monitored from cloudwatch and kibana. Metics could include node ststus, cpu utilization, jvm heap, disk             utilization etc.  
   
4. Could you extend your solution to launch a secure cluster of ElasticSearch nodes? What
would need to change to support this use case?
   Ans: Yes, deploy 3 nodes from terraform and provison ElastiSearch with corresponding config files.
   
5. Could you extend your solution to replace a running ElasticSearch instance with little or no
downtime? How?
   Ans: Yes, crate index alias -> swing DNS to new cluster -> migration data from old cluter to new cluster
   
6. Was it a priority to make your code well structured, extensible, and reusable?
   Ans:Yes

7. What sacrifices did you make due to time?
   Ans: only focus on provisioning ec2 and es cluster. Configuration of ansible on new instances could be automated.
