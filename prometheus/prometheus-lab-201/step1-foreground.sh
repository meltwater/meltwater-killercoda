echo -n "Waiting for prometheus." && \
while $(kubectl get pods | grep prometheus | grep -qv Running); do
  echo -n ".";
  sleep 1;
done && echo -e "\n\n" && \
kubectl get deployments