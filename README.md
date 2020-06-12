# Openshift

### POD SCALAING

```
apiVersion: v1
kind: ResourceQuota
metadata:
  name: compute-resources
spec:
  hard:
    pods: "4" 
    requests.cpu: "1" 
    requests.memory: 1Gi 
    limits.cpu: "2" 
    limits.memory: 2Gi 
    
````
3.9 ( https://docs.openshift.com/container-platform/3.9/scaling_performance/using_cpu_manager.html)

4.0 (https://docs.openshift.com/container-platform/3.9/scaling_performance/using_cpu_manager.html)




### POD DELETION

```$ oc get pods

oc delete pod <NAME OF POD > -n <myproject> --grace-period=0 --force

```

* [Custom Autoscaler](./custom-autoscaler/)

* [Syncing a Registry for Bootstrapping Disconnected Installs](./disconnected_registry/)

* [Expanded Health Checks for EFK and Hawkular](./health_check/)

* [Quota Management](./quota-management/) - A sample strategy for managing Quotas

* [NetworkPolicy Management](./networkpolicy/) - A sample strategy for managing Network Policy

* [Pre and Post install OpenShift validation](./validation/) - Automation to ensure clusters are ready for use.

* [Sample Install Inventories](./install/)

* [Capacity Planning Tooling](./capacity-dashboard/) - A Dashboard to help you make capacity decisions.

* [Software Delivery Metrics Dashboard](https://github.com/redhat-cop/mdt-quickstart.git) - A Dashboard to Measure the Flow of Software Features through a Value Stream

* [OpenShift Applier](https://github.com/redhat-cop/openshift-applier.git) - An Automation Framework for Kubernetes

* [Containers Quickstarts](https://github.com/redhat-cop/containers-quickstarts.git) - A set of quickstarts to help you get started building and deploying software on OpenShift

* [Container Pipelines](https://github.com/redhat-cop/container-pipelines.git) - A set of sample CI/CD Piplines for OpenShift

## Ansible Playbooks

* [Create Openshift Custom Login Page with New Logo](./branding/ansible-playbook-openshift-custom-login-page/)

* [Change Openshift Webconsole Logo](./branding/ansible-playbook-openshift-custom-webconsole-logo/)
