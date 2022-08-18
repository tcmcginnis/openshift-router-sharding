#!/bin/bash
# Collect route IP node IP addresses and wildward names
# 
# To be used as input to (F5) load balancer
#
# T.McGinnis
#
 oc  -n openshift-ingress get pods -o yaml|egrep -e "value: router-" -e "nodeName:"|xargs -l2 echo | while read x dns x node
do
   wildcard="*.`echo $dns|cut -d'.' -f2-`"
   nodeIP=`oc describe node $node|grep ExternalIP:`
   echo -e "$wildcard \t $nodeIP"
done
