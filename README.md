# take-home-project
```
For my project I chose terraform EKS module https://registry.terraform.io/modules/terraform-aws-modules/eks/aws/15.0.0 
version 15 because that is the stable version.
1. Prepare localscript.sh file to download tvenv binary. 

Using tfenv helps to switch terraform version. 
In the company codes built in 0.11, 0.12 (was a head ache), 0.14 (where they introduced 
for loops, conditions) or 1.0.0 version. So, instead of downloading 
terraform version, we can use tfenv which automatically does it for you. 
There is no way to upgrade terraform version. Keep the code in old version 
and build something else in the new version. Because HashiCorp itself does 
not suggest you to upgrade terraform. Because you need also upgrade state file. 

2. Prepare localscript.sh file inside of terraform project where we need 
to specify  how to install kubectl, aws authenticator, and aws cli
3. By using terraform resources, outputs, variables create the infrustructure 
to build EKS cluster. It takes about 12 minutes to complete. 