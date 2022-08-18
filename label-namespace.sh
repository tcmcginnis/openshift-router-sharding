# Label namespace for router shard
#
NS=${*:-demo}

echo "Labeling namespace: $NS"

oc label ns $NS routeshard=shard-1

# See "exclude-namespace.yaml" for explaination
#oc label ns $NS routertype=sharded
