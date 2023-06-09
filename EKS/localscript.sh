# Install kubectl
curl -LO https://dl.k8s.io/release/v1.26.0/bin/linux/amd64/kubectl
chmod +x kubectl
mkdir -p ~/.local/bin
mv ./kubectl ~/.local/bin/kubectl

# Install aws authenticator
curl -o aws-iam-authenticator https://amazon-eks.s3-us-west-2.amazonaws.com/1.14.6/2019-08-22/bin/linux/amd64/aws-iam-authenticator
chmod +x aws-iam-authenticator
sudo mv aws-iam-authenticator /bin 
aws-iam-authenticator version


# Install AWS CLI
sudo yum install awscli -y
