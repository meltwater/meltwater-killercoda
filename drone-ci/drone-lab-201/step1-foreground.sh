echo -n "Waiting for gitea." && \
while $(kubectl get pods | grep gitea | grep -qv Running); do 
  echo -n "."; 
  sleep 2; 
done && echo -e "\n\n" &&\
kubectl get pods
