#Deploy a dockerized Application in Aws ECS with new vpc

###demo-app
A simple nodejs based application build on nestjs framework.

###deploy
It contains script to deploy the application in ECS fargate by pushing your docker conainter into ECR and then
deploy from there to ECS.

Script were written on terraform & some shell script.

####Uninstall
After deploy, to remove or uninstall everything from AWS, just go to terraform folder & run destroy command.
```
terraform destroy
```
