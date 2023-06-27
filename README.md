# DevOps-Terraform

# What is Infrastructure as Code.
Infrastructure as Code is essentially a hub that can be used for collaboration across the IT organization to improve infrastructure deployments, increase our ability to scale quickly, and improve the application development process. Infrastructure as Code allows us to do all this consistently and proficiently. By using Infrastructure as Code for both our on-premises infrastructure and the public cloud, our organization can provide dynamic infrastructure to both our internal team members and ensure our customers have an excellent experience.

Ansible, chief, puppet are configuration management tools which means they are primarily designed to install, manage software and existing servers.

**Reference : https://developer.hashicorp.com/terraform/intro#infrastructure-as-code**

# Terraform Goals.
• Unify the view of resources using infrastructure as code
• Support the modern data center (IaaS, PaaS, SaaS)
• Expose a way for individuals and teams to safely and predictably change infrastructure
• Provide a workflow that is technology agnostic
• Manage anything with an API

# Terraform is written in HCL.
(HashiCorp Configuration Language) and is designed to be both human and machine readable. HCL is built using code configuration blocks which typically follow the following syntax:

##Template

   <BLOCK TYPE> "<BLOCK LABEL>" "<BLOCK LABEL>" {

##Block body

    <IDENTIFIER> = <EXPRESSION> ## Argument

}

##AWS EC2 Example

resource "aws_instance" "web_server" { ## BLOCK

ami = "ami-04d29b6f966df1537" ## Argument

instance_type = var.instance_type # Argument with value as expression (Variable value replaced from varibales.tf

}

Terraform Code Configuration block types include:
• Terraform Settings Block
• Terraform Provider Block
• Terraform Resource Block
• Terraform Data Block
• Terraform Input Variables Block
• Terraform Local Variables Block
• Terraform Output Values Block
• Terraform Modules Block

**Reference: https://developer.hashicorp.com/terraform/language**

**Terraform Configuration: https://developer.hashicorp.com/terraform/language/providers/configuration**

**Terraform Syntax: https://developer.hashicorp.com/terraform/language/modules/syntax#version or https://developer.hashicorp.com/terraform/language/functions**

# Terraform Basics.
All interactions with Terraform occur via the CLI. Terraform is a local tool (runs on the current machine). The terraform ecosystem also includes providers for many cloud services, and a module repository.
Hashicorp also has products to help teams manage Terraform: Terraform Cloud and Terraform Enterprise.
There are basic terraform commands, including:
**• terraform init**
**• terraform validate**
**• terraform plan**
**• terraform apply**
**• terraform destroy**

# Terraform State
In order to properly and correctly manage your infrastructure resources, Terraform stores the state of your managed infrastructure. Terraform uses this state on each execution to plan and make changes to your infrastructure. This state must be stored and maintained on each execution so future operations can perform correctly.

**Reference: https://developer.hashicorp.com/terraform/language/state/sensitive-data**

# Terraform Modules
Terraform configuration can be separated out into modules to better organize your configuration. This makes your code easier to read and reusable across your organization. A Terraform module is very simple: any set of Terraform configuration files in a folder is a module. Modules are the key ingredient to writing reusable and maintainable Terraform code. Complex configurations, team projects, and multi-repository codebases will benefit from modules. Get into the habit of using them wherever it makes sense.
Configure Terraform AWS Provider.
Use the Amazon Web Services (AWS) provider to interact with the many resources supported by AWS.
You must configure the provider with the proper credentials before you can use it.

**Reference: https://developer.hashicorp.com/terraform/language/resources**

# Configure the AWS Provider
provider "aws" {
region = "us-east-1"
}


# Infrastructure as Code in a Private or Public Cloud
**• Task 1: Create a new VPC in your account in the US-East-1 region**
**• Task 2: Create public and private subnets**
**• Task 3: Deploy an Internet Gateway and attach it to the VPC**
**• Task 4: Provision a NAT Gateway (a single instance will do) for outbound connectivity**
**• Task 5: Ensure that route tables are configured to properly route traffic based on the requirements**
