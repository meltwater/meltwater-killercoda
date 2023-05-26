echo -n "Waiting for localstack." && \
while $(kubectl get pods | grep localstack | grep -qv Running); do
  echo -n ".";
  sleep 1;
done && echo -e "\n\n" && \
kubectl get deployments
