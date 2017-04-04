# Installation

You can easily install net-tools by pip

~~~bash
pip install net-tools
~~~

# Pre-requisite

To discover your cloud resources like AWS, OpenStack,
credentials are required.

For AWS,

update your ~/.aws/credentials

~~~
[default]
aws_access_key_id=<your aws access key id>
aws_secret_access_key=<your aws secret access key>
~~~

Otherwise, when you start net-tools, it ask your keys.
 
# Start net-tools

~~~bash
# net-tools
~~~

## Example: start with credentials

~~~bash
[root@server]# net-tools 
INFO Found User's AWS credentials file at /root/.aws/credentials
INFO Loading /root/.aws/credentials
INFO Starting new HTTPS connection (1): ec2.us-east-1.amazonaws.com

###################################################################
Welcome to the net-tools shell.
Discover resources first, (for AWS, type "discover aws")
Type help or ?.
###################################################################

net-tools> 
~~~

## Example: start with no credentials

~~~bash
[root@flywheel ~]# net-tools
WARNING There is no credentials
INFO AWS Credential does not exist
Add AWS Credential (y/n)?y
AWS Access Key ID: AKIAJZE6N5CXXXXXXXXX
AWS Secret Access Key: 7jeZ7/EarWq9lxhXXXXXXXXXXXXXXXXXXX3EpH/u
INFO Starting new HTTPS connection (1): ec2.us-east-1.amazonaws.com

###################################################################
Welcome to the net-tools shell.
Discover resources first, (for AWS, type "discover aws")
Type help or ?.
###################################################################

net-tools> 
~~~

# Discover AWS Resources

net-tools discovers AWS VPCs and Subnets

~~~bash
Command: discover aws <aws region name>
- <aws region name> is optional, if you want to discover specified region.
~~~

## Example: Discover all aws regions

~~~bash
net-tools> discover aws
INFO Starting new HTTPS connection (1): ec2.us-east-1.amazonaws.com
INFO Starting new HTTPS connection (1): ec2.ap-south-1.amazonaws.com
INFO Starting new HTTPS connection (1): ec2.ap-south-1.amazonaws.com
INFO Starting new HTTPS connection (1): ec2.eu-west-2.amazonaws.com
INFO Starting new HTTPS connection (1): ec2.eu-west-2.amazonaws.com
INFO Starting new HTTPS connection (1): ec2.eu-west-1.amazonaws.com
INFO Starting new HTTPS connection (1): ec2.eu-west-1.amazonaws.com
INFO Starting new HTTPS connection (1): ec2.ap-northeast-2.amazonaws.com
INFO Starting new HTTPS connection (1): ec2.ap-northeast-2.amazonaws.com
INFO Starting new HTTPS connection (1): ec2.ap-northeast-2.amazonaws.com
INFO Starting new HTTPS connection (1): ec2.ap-northeast-1.amazonaws.com
INFO Starting new HTTPS connection (1): ec2.ap-northeast-1.amazonaws.com
INFO Starting new HTTPS connection (1): ec2.sa-east-1.amazonaws.com
INFO Starting new HTTPS connection (1): ec2.sa-east-1.amazonaws.com
INFO Starting new HTTPS connection (1): ec2.ca-central-1.amazonaws.com
INFO Starting new HTTPS connection (1): ec2.ca-central-1.amazonaws.com
INFO Starting new HTTPS connection (1): ec2.ap-southeast-1.amazonaws.com
INFO Starting new HTTPS connection (1): ec2.ap-southeast-1.amazonaws.com
INFO Starting new HTTPS connection (1): ec2.ap-southeast-2.amazonaws.com
INFO Starting new HTTPS connection (1): ec2.ap-southeast-2.amazonaws.com
INFO Starting new HTTPS connection (1): ec2.eu-central-1.amazonaws.com
INFO Starting new HTTPS connection (1): ec2.eu-central-1.amazonaws.com
INFO Starting new HTTPS connection (1): ec2.us-east-1.amazonaws.com
INFO Starting new HTTPS connection (1): ec2.us-east-1.amazonaws.com
INFO Starting new HTTPS connection (1): ec2.us-east-2.amazonaws.com
INFO Starting new HTTPS connection (1): ec2.us-east-2.amazonaws.com
INFO Starting new HTTPS connection (1): ec2.us-west-1.amazonaws.com
INFO Starting new HTTPS connection (1): ec2.us-west-1.amazonaws.com
INFO Starting new HTTPS connection (1): ec2.us-west-2.amazonaws.com
INFO Starting new HTTPS connection (1): ec2.us-west-2.amazonaws.com
net-tools>
~~~

## Example: Discover us-west-1

~~~bash
net-tools> discover aws us-west-1
INFO Starting new HTTPS connection (1): ec2.us-east-1.amazonaws.com
INFO Starting new HTTPS connection (1): ec2.us-west-1.amazonaws.com
INFO Starting new HTTPS connection (1): ec2.us-west-1.amazonaws.com
net-tools> 
~~~

## Example: Discover us-west-1 us-east-1

~~~bash
net-tools> discover aws us-west-1 us-east-1
INFO Starting new HTTPS connection (1): ec2.us-east-1.amazonaws.com
INFO Starting new HTTPS connection (1): ec2.us-east-1.amazonaws.com
INFO Starting new HTTPS connection (1): ec2.us-east-1.amazonaws.com
INFO Starting new HTTPS connection (1): ec2.us-west-1.amazonaws.com
INFO Starting new HTTPS connection (1): ec2.us-west-1.amazonaws.com
net-tools>
~~~

# List VPCs

After discovering the resources, you can search VPCs.

~~~bash
Command: list vpc <aws region name>
- <aws region name> is optional, if you want to list specified region.
~~~


## Example: list all regions, after "discover aws"

~~~bash
net-tools> list vpc
Provider   Region          VpcId           VpcName         CIDR            AZ              SubnetId        SubnetName      CIDR           
--------------------------------------------------------------------------------------------------------------------------------------------
aws        ap-northeast-1  vpc-a86584cc    -               172.31.0.0/16   ap-northeast-1c subnet-6fa44f37 -               172.31.0.0/20  
aws        ap-northeast-1  vpc-a86584cc    -               172.31.0.0/16   ap-northeast-1a subnet-e9b1159f -               172.31.16.0/20 
aws        ap-northeast-2  vpc-778ac71e    VPC-DEV-KR      10.1.0.0/16     ap-northeast-2c subnet-4fc85f02 dev-net-front-b 10.1.100.0/24  
aws        ap-northeast-2  vpc-778ac71e    VPC-DEV-KR      10.1.0.0/16     ap-northeast-2a subnet-4c025f25 dev-net-front-a 10.1.0.0/24    
aws        ap-south-1      vpc-0438a96d    -               172.31.0.0/16   ap-south-1a     subnet-bb1f8cd2 -               172.31.16.0/20 
aws        ap-south-1      vpc-0438a96d    -               172.31.0.0/16   ap-south-1b     subnet-e20ddbaf -               172.31.0.0/20  
aws        ap-southeast-1  vpc-d00f9bb4    -               172.31.0.0/16   ap-southeast-1a subnet-0ed89d78 -               172.31.16.0/20 
aws        ap-southeast-1  vpc-d00f9bb4    -               172.31.0.0/16   ap-southeast-1b subnet-04e7b660 -               172.31.0.0/20  
aws        ap-southeast-2  vpc-74bf0b10    -               172.31.0.0/16   ap-southeast-2c subnet-9dbe02c4 -               172.31.0.0/20  
aws        ap-southeast-2  vpc-74bf0b10    -               172.31.0.0/16   ap-southeast-2b subnet-3f42325b -               172.31.16.0/20 
aws        ap-southeast-2  vpc-74bf0b10    -               172.31.0.0/16   ap-southeast-2a subnet-efba2099 -               172.31.32.0/20 
aws        ca-central-1    vpc-55c7103c    -               172.31.0.0/16   ca-central-1a   subnet-574d9f3e -               172.31.16.0/20 
aws        ca-central-1    vpc-55c7103c    -               172.31.0.0/16   ca-central-1b   subnet-4748b93c -               172.31.0.0/20  
aws        eu-central-1    vpc-cbad1fa3    -               172.31.0.0/16   eu-central-1a   subnet-57deac3f -               172.31.0.0/20  
aws        eu-central-1    vpc-cbad1fa3    -               172.31.0.0/16   eu-central-1b   subnet-1f850065 -               172.31.16.0/20 
aws        eu-west-1       vpc-a7c340c3    -               172.31.0.0/16   eu-west-1c      subnet-630c6107 -               172.31.0.0/20  
aws        eu-west-1       vpc-a7c340c3    -               172.31.0.0/16   eu-west-1a      subnet-63138c15 -               172.31.16.0/20 
aws        eu-west-1       vpc-a7c340c3    -               172.31.0.0/16   eu-west-1b      subnet-bb3a96e3 -               172.31.32.0/20 
aws        eu-west-2       vpc-9d75bff4    -               172.31.0.0/16   eu-west-2a      subnet-54c03e2f -               172.31.0.0/20  
aws        eu-west-2       vpc-9d75bff4    -               172.31.0.0/16   eu-west-2b      subnet-cac4d480 -               172.31.16.0/20 
aws        sa-east-1       vpc-9251d8f6    -               172.31.0.0/16   sa-east-1c      subnet-a05bb8f8 -               172.31.16.0/20 
aws        sa-east-1       vpc-9251d8f6    -               172.31.0.0/16   sa-east-1a      subnet-db89b6bf -               172.31.0.0/20  
aws        us-east-1       vpc-9013c8f7    vpc2            172.32.0.0/16   us-east-1e      subnet-23e2ca1e -               172.32.0.0/16  
aws        us-east-2       vpc-6fe35206    -               172.31.0.0/16   us-east-2a      subnet-2958de40 -               172.31.0.0/20  
aws        us-east-2       vpc-6fe35206    -               172.31.0.0/16   us-east-2b      subnet-b932fac2 -               172.31.16.0/20 
aws        us-east-2       vpc-6fe35206    -               172.31.0.0/16   us-east-2c      subnet-1a4ba857 -               172.31.32.0/20 
aws        us-west-1       vpc-34c5ab51    mywestvpc       172.31.0.0/16   us-west-1c      subnet-5b26b802 -               172.31.0.0/20  
aws        us-west-1       vpc-34c5ab51    mywestvpc       172.31.0.0/16   us-west-1a      subnet-6ad8810f -               172.31.16.0/20 
aws        us-west-2       vpc-493c2f2b    -               172.31.0.0/16   us-west-2b      subnet-470c3e33 -               172.31.16.0/20 
aws        us-west-2       vpc-493c2f2b    -               172.31.0.0/16   us-west-2a      subnet-3ae3f058 -               172.31.32.0/20 
aws        us-west-2       vpc-493c2f2b    -               172.31.0.0/16   us-west-2c      subnet-0f075b49 -               172.31.0.0/20  
net-tools> 
~~~

## Example: list specific region

~~~bash
net-tools> list vpc us-west-1
Provider   Region          VpcId           VpcName         CIDR            AZ              SubnetId        SubnetName      CIDR           
--------------------------------------------------------------------------------------------------------------------------------------------
aws        us-west-1       vpc-34c5ab51    mywestvpc       172.31.0.0/16   us-west-1c      subnet-5b26b802 -               172.31.0.0/20  
aws        us-west-1       vpc-34c5ab51    mywestvpc       172.31.0.0/16   us-west-1a      subnet-6ad8810f -               172.31.16.0/20 
net-tools> 
~~~

## Example: list specific regions

~~~bash
net-tools> list vpc us-west-1 ap-northeast-2
Provider   Region          VpcId           VpcName         CIDR            AZ              SubnetId        SubnetName      CIDR           
--------------------------------------------------------------------------------------------------------------------------------------------
aws        ap-northeast-2  vpc-778ac71e    VPC-DEV-KR      10.1.0.0/16     ap-northeast-2c subnet-4fc85f02 dev-net-front-b 10.1.100.0/24  
aws        ap-northeast-2  vpc-778ac71e    VPC-DEV-KR      10.1.0.0/16     ap-northeast-2a subnet-4c025f25 dev-net-front-a 10.1.0.0/24    
aws        us-west-1       vpc-34c5ab51    mywestvpc       172.31.0.0/16   us-west-1c      subnet-5b26b802 -               172.31.0.0/20  
aws        us-west-1       vpc-34c5ab51    mywestvpc       172.31.0.0/16   us-west-1a      subnet-6ad8810f -               172.31.16.0/20 
net-tools> 
~~~

# Routing information check

"Routing information check" is calculating two IP prefixes which are overlap or not.

~~~bash
Command: routable <vpc-id|subnet-id|prefix> <vpc-id|subnet-id|prefix>
- The arguments can be VPC or subnet ID.
- IP prefix is also possible.
~~~


## Example: compare two VPCs

~~~bash
net-tools> routable vpc-778ac71e vpc-34c5ab51
Network:vpc-778ac71e    10.1.0.0        ~ 10.1.255.255   
Network:vpc-34c5ab51    172.31.0.0      ~ 172.31.255.255 
-------------------------------------------------
Overlap IP ranges: None
net-tools> 
~~~

## Example: compare VPC and Subnet

~~~bash
net-tools> routable vpc-778ac71e subnet-5b26b802
Network:vpc-778ac71e    10.1.0.0        ~ 10.1.255.255   
Network:subnet-5b26b802 172.31.0.0      ~ 172.31.15.255  
-------------------------------------------------
Overlap IP ranges: None
net-tools> 
~~~

## Example: compare VPC and IP prefix

~~~bash
net-tools> routable vpc-778ac71e 172.31.0.0/20
Network:vpc-778ac71e    10.1.0.0        ~ 10.1.255.255   
Network:172.31.0.0/20   172.31.0.0      ~ 172.31.15.255  
-------------------------------------------------
Overlap IP ranges: None
net-tools> 
~~~

## Example: overap IP ranges

~~~bash
net-tools> routable vpc-778ac71e 10.1.0.0/24
Network:vpc-778ac71e    10.1.0.0        ~ 10.1.255.255   
Network:10.1.0.0/24     10.1.0.0        ~ 10.1.0.255     
-------------------------------------------------
Overlap IP ranges: 10.1.0.0 ~ 10.1.0.255
~~~
