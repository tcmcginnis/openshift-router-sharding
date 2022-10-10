# openshift-router-sharding

### working example to:


> Define a new router shard >>> ingresscontroller

> Modify the default ingress to exclude (not manage) the sharded routes

> Label a namespace to utilize the new shard


# Scaling:
oc -n openshift-ingress-operator scale IngressController shard-1 --replicas=3

# RedHat Guidelines for various limits including routes per Ingress Controllers
https://docs.openshift.com/container-platform/4.10/scalability_and_performance/planning-your-environment-according-to-object-maximums.html
