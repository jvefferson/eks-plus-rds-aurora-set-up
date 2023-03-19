# building EKS cluster
```
1. Prepare localscript.sh file inside of terraform project where we need 
to specify  how to install kubectl, aws authenticator, and aws cli
2. By using terraform resources, outputs, variables create the infrustructure 
to build EKS cluster. 
Run terraform init/apply. It takes about 12 minutes to complete. 
3. Create login.sh file to automatically run basic kubectl command.