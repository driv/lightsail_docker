# Run a docker-compose enabled lightsail instance using Terraform

```
terraform init #First time only
terraform apply
```

## Ssh into the instance

You can use terraform output to ssh into the instance.

```
ssh admin@$(terraform output -raw ip_address)

#Both docker-compose and docker are available without sudo

docker ps -a
docker-compose
```
