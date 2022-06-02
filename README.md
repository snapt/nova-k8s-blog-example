# Nova Blog Example

This is an example for deploying a simple blog in Kubernetes, and using Nova 
to protect and monitor the service. 

### Install
1. Follow the instructions in [blog/](blog/)
2. Follow the instructions in [nova/](nova/)

### Requirements
You must have configured a Nova ADC beforehand in order to get your AutoJoin key 
and Helm yaml file (nova/nova.yaml).

### Running your own app
The important components here are the headless service used for service discovery (in blog/) 
and the Helm deployment of Nova (in nova/). 

You can run your own application by configuring a headless service for it and using 
service discovery to point to it in Nova. 

Learn more by following our [Nova in K8S](https://nova-docs.snapt.net/guide_k8s.html) guide.