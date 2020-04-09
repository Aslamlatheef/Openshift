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
