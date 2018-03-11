# Devops Test

Make sure you have executed:

 vagrant plugin install vagrant-docker-compose

This Vagrant up does 2 thing actually:

1. I put up some hacky way to change host machine's /etc/hosts value to whatever website you want and direct that to the index.html file I created in there (well of course it's a simple hello world page).  In this case if you ssh into the machine and run w3m test.com, it will point you to that index.html I made.  This was achieved by implementing a helloworld.sh script with vagrant provision.

2. This way is more proper, I used vagrant provision to include a docker-compose.yml, which should when prompt on URL localhost:5000, take you to a hello world site and each time you visit the counter will go up. 

ex. Hello World! I have been seen x times.


I've had lots of fun with this test, looking forward to hearing from you :)