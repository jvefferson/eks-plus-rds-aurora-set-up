# take-home-project
```
I. Here are the step-by-step instructions to use the EKS Terraform module:

1. First, you need to have Terraform installed on your local machine. If you don't have it installed already, you can download it from the official website of Terraform.
2. Prepare localscript.sh file to download tfenv binary which is terraform switcher:
Using tfenv helps to switch terraform version. 
In the company codes built in 0.11, 0.12, 0.14 (where they introduced 
for loops, conditions) or 1.0.0 version. So, instead of downloading 
terraform version, we can use tfenv which automatically does it for you. 
There is no way to upgrade terraform version. Keep the code in old version 
and build something else in the new version. Because HashiCorp itself does 
not suggest you to upgrade terraform due to you need also upgrade state file.
3. Configure your AWS credentials: Set up your AWS credentials by setting the AWS_ACCESS_KEY_ID and AWS_SECRET_ACCESS_KEY environment variables or by creating an AWS credentials file.
4. Create a new directory for your EKS cluster and name it "EKS," for example.
5. Create a new Terraform configuration file in the directory by running touch main.tf.
6. Inside the provider.tf  you need to declare the provider and inside of main.tf file - module blocks.
7. For the provider block, you need to specify the AWS provider and its region, as shown below:

provider "aws" {
  region = "us-east-1"
}
Note: Make sure to replace the region with the region of your choice.

8. I used the module provided in this link https://registry.terraform.io/modules/terraform-aws-modules/eks/aws/19.10.1
9. After that, you can run terraform init to download the necessary modules.
10. Next, run terraform plan to see what changes will be made.
11. Finally, run terraform apply to apply the changes and create the EKS cluster. Note that it can take up to 12 minutes to set up the cluster. 
12. Once the cluster is created, you can use the AWS CLI or the Kubernetes CLI (kubectl) to interact with it. 

13. The best way is to create login.sh file to automatically run basic kubectl commands.

II. Here are step by step instructions on how to use the RDS-Aurora Terraform module:

1. Create a new directory where you will store your Terraform configuration files. For example, you can create a directory named "RDS".
2. Create a new file inside your directory named "main.tf". This file will contain the Terraform code that will create your RDS Aurora instance. I used terraform module https://registry.terraform.io/modules/terraform-aws-modules/rds-aurora/aws/7.7.0
3. Configure the inputs for the RDS Aurora module by adding the necessary variables to the "RDS" block in your "main.tf"
4. Run the command "terraform init/apply" in your terminal to apply your Terraform configuration. This command will create your RDS Aurora instance.

III. Here some steps to create helm chart:

1. To install helm create helm.sh file
2. To manually create helm chart we can use helm create command with StatefullSet, HPA, Ingress, and Service yaml files.
Run helm install command.