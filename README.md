<p align="center">
  <picture width="160px" align="center">
      <source media="(prefers-color-scheme: dark)" srcset="https://raw.githubusercontent.com/terramate-io/brand/5a799813d429116741243b9b06a9f034a3991bf3/darkmode/stamp.svg">
      <img alt="Terramate" src="https://raw.githubusercontent.com/terramate-io/brand/5a799813d429116741243b9b06a9f034a3991bf3/whitemode/stamp.svg" width="160px" align="center">
    </picture>
  <h1 align="center">Terramate AWS Quickstart Guide</h1>
  <p align="center">
    ✨ <a href="https://terramate.io/docs/cli">https://terramate.io</a> ✨
    <br/>
  </p>
</p>
<br/>

<p align="center">
  <a href="https://terramate.io/discord" rel="nofollow"><img src="https://img.shields.io/discord/1088753599951151154?label=Discord&logo=discord&logoColor=white" alt="Discord Server"></a>
</p>
<p align="center">
  <a href="https://terramate.io/docs">📖 Terramate Docs</a> | <a href="https://terramate.io/docs/cli/getting-started">🚀 Getting Started</a> | <a href="https://play.terramate.io">💻 Playground</a> | <a href="https://jobs.ashbyhq.com/terramate" title="Terramate Job Board">🙌 Join Us</a>
</p>

<br>
<br>

## Introduction

This template repository provides a pre-configured Terramate project to get started with **Terramate** and **Terraform** on **AWS**
using best practices. It also comes with pre-configured GitOps workflows that run natively in GitHub Actions so that you
can automate your Terraform in Pull Requests without requiring any additional tooling or infrastructure using the
Terramate orchestration and change detection.

### Features

- **GitOps for Terraform with GitHub Actions**: Pre-configured GitHub Action GitOps workflows using merge-and-apply strategy with drift detection and reconciliation.
- **Recommended Project Structure**: Best practice project structure with environment-based organization (stg, prd).
- **Change Preview in Pull Requests**: Preview and approval of plans in Pull Requests to review and approve changes before deploying.
- **DRY Terraform Stacks**: Generate Terraform provider and backend configuration in stacks.
- **OpenID Connect (OIDC)**: Allows GitHub Actions workflows to access AWS resources without storing long-lived GitHub secrets.
- **Terraform S3 Remote State Backend**: Terraform Remote State Storage and State Locking with AWS S3 and DynamoDB.
- **Terramate Cloud Integration**: Pushes data to Terramate Cloud for observability, asset management, drift management, and Slack notifications.
- **Multi-Environment Support**: Built-in support for staging and production environments with separate AWS accounts.
- **Drift Detection and Reconciliation**: Automated drift detection and reconciliation workflows to maintain infrastructure consistency.

### AWS Architecture

This template creates a complete AWS infrastructure with the following components:

1. **VPC (Virtual Private Cloud)**
   - A dedicated network space for your infrastructure
   - Public and private subnets across multiple availability zones
   - NAT Gateway for outbound internet access from private subnets
   - Internet Gateway for inbound internet access to public subnets

2. **EKS (Elastic Kubernetes Service)**
   - A managed Kubernetes cluster in auto-mode
   - Node groups for running your containerized applications
   - Auto-scaling capabilities based on workload demand
   - Integration with AWS IAM for authentication and authorization

3. **Sample Applications**
   - Two sample web applications deployed in the EKS cluster
   - Applications are accessible via Load Balancer services
   - Demonstrates best practices for Kubernetes deployments

The infrastructure is designed to be:
- Highly available across multiple availability zones
- Secure with proper network isolation
- Scalable to meet growing demands
- Easy to maintain with clear separation of concerns

## How do you use this repository?

### 1: Create a new repository from this template

Click the *Use this template* button to create your own repository in a GitHub
account or organization you manage, and let's get started.

### 2: Pre-requisites

Ensure you have the following prerequisites set up by running the commands below:

1. Install asdf: Follow the [official guide](https://asdf-vm.com/guide/getting-started.html).

2. Install required `asdf` plugins for Terramate, Terraform, and OpenTofu:
  
    ```bash
    asdf plugin add terramate && \
    asdf plugin add terraform && \
    asdf plugin add opentofu && \
    asdf plugin add pre-commit && \
    asdf install
     ```

3. *(Optional)* If you need to create a Terraform State Bucket and Workload Identity Provider, you need to configure your AWS
credentials using one of the supported [authentication mechanisms](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#authentication-and-configuration).
(We recommend you use [aws-vault](https://github.com/99designs/aws-vault) for secure authentication.)

4. *(Optional)* Install [pre-commit](https://pre-commit.com/) hooks

We recommend installing the pre-commit hooks in this repository to enable a seamless development flow. The hooks guarantee
that your Terramate and Terraform code is always up-to-date and well-formatted when committing changes to the repository.

```sh
pre-commit install
```

### Project Structure

The project is organized into the following main directories:

- `stacks/terraform/`: Contains all Terraform stacks
  - `envs/`: Environment-specific configurations
    - `stg/`: Staging environment
      - `config.tm.hcl`: Environment-specific configuration for all sub-stacks
      - `vpc/`: Network infrastructure stack
        - `main.tf`: VPC, subnets, and networking components
      - `eks/`: Kubernetes cluster stack
        - `main.tf`: EKS cluster and node groups
        - `apps/`: Application deployments (with namespace definition)
          - `app1/`: First application stack
          - `app2/`: Second application stack
    - `prd/`: Production environment (similar structure to stg)
  - `workflows.tm.hcl`: Reusable Terramate scripts for common operations

The stacks are designed to be deployed in a specific order using Terramate's stack ordering capabilities. This allows you to:
- Deploy infrastructure components (VPC then EKS cluster) first
- Create namespaces
- Deploy applications in the correct order
- All while maintaining a single state file per stack

This approach enables you to:
- Deploy multiple related resources in a single PR
- Maintain clear dependencies between resources
- Keep your infrastructure code organized and modular
- Reduce the number of PRs needed for related changes

### Promoting Changes from Staging to Production

After testing changes in the staging environment, you can promote them to production using the `promote` Terramate script. This script is designed to help you safely propagate changes from staging to production.

To use the promote script:

1. Navigate to the staging environment directory:
   ```bash
   cd stacks/terraform/envs/stg
   ```

2. Run the promote script:
   ```bash
   terramate script run promote
   ```

> **Note**: The promote script is only available when executed from within the staging environment directory. If you try to run it from any other location, it will print a warning message and exit.

The promote script will:
- Compare the changes between staging and production and sync any differences (including deleting files)
- Run `terramate generate` to make sure any config differences are applied correctly

### Configure Terraform State Bucket and Workload Identity Provider

This repository comes with a pre-configured Terraform S3 State Bucket, DynamoDB Lock Table and Workload Identity Provider to enable keyless authentication from GitHub Actions to AWS.

#### Update Terramate Configurations

- Navigate to the `config.tm.hcl` file in your project's root directory.
- Replace the default Terraform State Bucket name with a name of your choice.
```bash
globals "terraform" "backend" {
  bucket = "any-name-you-want"
  region = "us-east-1"
}
```

- Update the GitHub repository name for the workload identity provider with your repository (`<githubuserororganization/repository-name>`).
```bash
globals "aws" "oidc" {
  github_repositories = [
    "your-github-username-or-organization/repository-name",
  ]
}
```

#### Generate Terraform Files from Terramate Configurations

Generate Terraform files using Terramate:
```bash
terramate generate
```
The `terramate generate` command generates files/code in stacks and helps to keep your stacks [DRY](https://terramate.io/docs/cli/code-generation/#introduction). In the `_bootstrap/terraform-state-bucket` directory, the `config.tm.hcl` file includes a `generate_hcl` block which specifies the HCL code that will be generated by the generate command.
Because we run the command without specifying the [context](https://terramate.io/docs/cli/code-generation/#generation-context), the default `stack` context is used and generates code relative to the stack where the config file is defined(`terraform-state-bucket` stack in this case). The generated code can be located in the `_main.tf` file within the same directory.

####  Provision Infrastructure on AWS

To deploy the generated resources to AWS, use the following commands:

```bash
terramate run -C _bootstrap terraform init
terramate run -C _bootstrap terraform apply
```

#### Migrate State to S3 Bucket

Now that we have the Terraform State Bucket deployed, we want to move the state of the newly deployed bucket and workload
identity provider into the bucket.

1. Remove `tags = ["no-backend"]` from `stack.tm.hcl` files of the `_bootstrap/oidc-aws-github` and
`/bootstrap/terraform-state-bucket` directories.

2. Generate Terraform configuration files:
```bash
terramate generate
```
This will create a `_backend.tf` file in both stack directories.

3. Initialize Terraform for state migration:
```bash
terramate run -C _bootstrap terraform init
```
This command will move the state of deployed stacks to the S3 bucket.

### Create Terramate Cloud Account

#### Create a new Organization

1. Visit [Terramate Cloud](https://app.terramate.io)
2. Sign up for a new account or log in
3. Create a new organization
4. Follow the setup wizard to configure your organization

#### Configure Slack Notifications

1. In Terramate Cloud, navigate to your organization settings
2. Go to the "Integrations" section
3. Add a new Slack integration

### Available Terramate Scripts

The project includes several pre-configured Terramate scripts in `stacks/terraform/workflows.tm.hcl` (see [Terramate Scripts Documentation](https://terramate.io/docs/cli/scripts/)):

- `init`: Initialize Terraform
- `preview`: Create a preview of changes and sync to Terramate Cloud
- `deploy`: Run a full deployment cycle and sync results to Terramate Cloud
- `drift detect`: Check for infrastructure drift and sync results to Terramate Cloud
- `drift reconcile`: Optionally reconcile detected drift
- `terraform render`: Render Terraform plan output

### GitHub Actions Workflows

The repository includes three main GitHub Actions workflows. All workflows support multiple environments (stg, prd) using a workflow matrix.

1. **Preview Workflow** (`preview.yml`):
   - Runs on pull requests
   - Performs Terraform validation and planning
   - Syncs preview results to Terramate Cloud

2. **Deploy Workflow** (`deploy.yml`):
   - Runs on merges to the main branch
   - Applies approved changes
   - Syncs deployment results to Terramate Cloud

3. **Drift Detection Workflow** (`drift-detection.yml`):
   - Runs on a schedule
   - Detects infrastructure drift
   - Creates pull requests for drift reconciliation
   - Sends notifications via Slack

### To Do

- Policies with OPA and/or Sentinel
- Implement checkov, trivy, terrascan
- Implement infracost
