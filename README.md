# openshift-router-sharding

### working example to:


> Define a new router shard >>> ingresscontroller

> Modify the default ingress to exclude (not manage) the sharded routes

> Label a namespace to utilize the new shard


# Scaling:
oc -n openshift-ingress-operator scale IngressController shard-1 --replicas=3

