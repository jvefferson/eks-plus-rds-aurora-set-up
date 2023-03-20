# take-home-project
```
For my project I chose terraform EKS module https://registry.terraform.io/modules/terraform-aws-modules/eks/aws/15.0.0 
version 15 because that is the stable version.
1. Prepare localscript.sh file to download tfenv binary which is terraform switcher:

Using tfenv helps to switch terraform version. 
In the company codes built in 0.11, 0.12, 0.14 (where they introduced 
for loops, conditions) or 1.0.0 version. So, instead of downloading 
terraform version, we can use tfenv which automatically does it for you. 
There is no way to upgrade terraform version. Keep the code in old version 
and build something else in the new version. Because HashiCorp itself does 
not suggest you to upgrade terraform due to you need also upgrade state file. 

2. Create new folder EKS.
Prepare localscript.sh file inside of terraform project where we need 
to specify  how to install kubectl, aws authenticator, and aws cli along with prepare.sh file. 
By using terraform resources, outputs, variables create the infrustructure 
to build EKS cluster. 
Run terraform init/apply. It takes about 12 minutes to complete. 
Create login.sh file to automatically run basic kubectl commands.


3. Create new folder RDS.
To build rds-aurora I used terarform module:
https://registry.terraform.io/modules/terraform-aws-modules/rds-aurora/aws/latest

4. To install helm create helm.sh file
To manually create helm chart we can use helm create command  
with StatefullSet, HPA, Ingress, and Service yaml files.
Run helm install command.