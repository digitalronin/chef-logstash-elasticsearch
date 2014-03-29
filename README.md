Logstash + Elasticsearch
=====================

This is a starting point for a project using;

* Ubuntu 12.04
* Ruby 2.0
* Chef
* Vagrant (for development VMs)
* Logstash 1.4.0
* Elasticsearch 0.90.13

This code is described in [this blog post](http://roninonrails.wordpress.com/2014/03/29/playing-with-logstash)

# Pre-requisites

[See this blog post](http://roninonrails.wordpress.com/2014/03/21/getting-started-with-chef-and-vagrant)

# Deployment instructions

Edit the Vagrantfile and replace my SSH public key
with yours. Then;

    $ ./bootstrap_vagrantvm

This will boot a Vagrant VM, install ruby 2.0 and chef, and then
execute the runlist in server.json and install logstash and
elasticsearch.
