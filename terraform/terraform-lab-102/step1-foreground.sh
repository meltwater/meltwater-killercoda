# Wait for Localstack
echo -n "Waiting for localstack." && \
while $(kubectl get pods | grep localstack | grep -qv Running); do
  echo -n ".";
  sleep 1;
done && echo -e "\n\n" && \
kubectl get deployments
echo INFO: Localstack is running!

# Write Service IP
echo INFO: Writing local host config
echo $(kubectl get services | grep localstack | awk '{print $3}') localstack >>/etc/hosts

# Installing Terraform
echo INFO: Installing Terraform
snap install terraform --channel=latest/stable --classic

# Aliases
alias aws='docker run --rm -v ~:/root amazon/aws-cli'
