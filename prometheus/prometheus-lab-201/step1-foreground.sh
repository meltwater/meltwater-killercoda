echo -n "Waiting for prometheus." && \
while $(kubectl get pods | grep prometheus | grep -qv Running); then
  echo -n ".";
  sleep 1;
done && echo -e "\n\n" && \
kubectl get deployments