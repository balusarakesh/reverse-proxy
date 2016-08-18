This Chef recipe is demonstrate is to setup reverse proxy in Nginx server on AWS EC2 instance.
Please follow these steps to setup the reverse proxy:
 - Launch an EC2 instance and add bootstrap it to the chef-master
 - add the heartflow recipe to the run_list
 - PUT PRIVATE IP OF THE INSTANCE IN THE TEMPLATE default.erb
 - run chef-client and you can see that the public ip of the instance leads to "google.com"
