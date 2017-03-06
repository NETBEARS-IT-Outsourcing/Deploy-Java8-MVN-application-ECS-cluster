# Deploy-Java8-MVN-application-ECS-cluster
AWS CloudFormation sample that builds and runs a Java8 with Maven application on ECS

# Assumptions
1. I wanted to NOT give ECS instances (part of Auto-Scaling group) public IPs, but could not make the ECS agent add instances to the cluster unless they were deployed with a public IP
2. Because of point 1), all the security measures have been taken using Security Groups, and:
  - All auto-scaling instances have no ports open to the "open-world"
  - SSH connection to those servers can be done through the standalone EC2 instance deployed as a "bastion" server
3. Because of EFS availability, the stack can only be deployed in the following regions [us-west-2,us-east-1,eu-west-1] as per https://aws.amazon.com/blogs/aws/amazon-elastic-file-system-production-ready-in-three-regions/.
4. The container image has been predeployed based on the Dockerfile that can be found in Code\application
5. The policy ARNs are predeployed in the environment and a sample of how they look exactly can be found in Code\Policies

# Design document
  - infrastructure available as a picture in Design\WebAppArchitecture.png
  - explanation and high-levle design as a doc in Design\HighLevelDesign.doc

# Deployment manual
  - available as a .doc in Deployment\DeploymentSteps.doc

# Source code
  - application code is available in Code\application\
  - cloudformation template is available in Code\aws-cloudformation\
