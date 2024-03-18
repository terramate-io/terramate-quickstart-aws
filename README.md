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
  <a href="https://terramate.io/docs">📖 Terramate Documentation</a> | <a href="https://terramate.io/docs/cli/getting-started">🚀 Getting Started</a> | <a href="https://play.terramate.io">💻 Playground</a> | <a href="https://jobs.ashbyhq.com/terramate" title="Terramate Job Board">🙌 Join Us</a>
</p>

<br>
<br>

## Introduction

This template repository provides a pre-configured Terramate project to get started with Terramate and Terraform on AWS
using best practices. It also comes with pre-configured GitOps workflows that run natively in GitHub Actions so that you
can automate your Terraform in Pull Requests without requiring any additional tooling or infrastructure using the
Terramate orchestration and change detection.

### Features

- **GitOps for Terraform with GitHub Actions**: Pre-configured GitHub Action GitOps workflows using merge-and-apply strategy.
- **Recommended Project Structure**: Best practice project structure to get up and running in no time.
- **Change Preview in Pull Requests**: Preview and approval of plans in Pull Requests to review and approve changes before deploying.
- **DRY Terraform Stacks**: Generate Terraform provider and backend configuration in stacks.
- **OpenID Connect (OIDC)**: Allows GitHub Actions workflows to access AWS resources without storing long-lived GitHub secrets.
- **Terraform S3 Remote State Backend**: Terraform Remote State Storage and State Locking with AWS S3 and DynamoDB.
- **Terramate Cloud Integration**: Pushes data to Terramate Cloud for observability, asset management, drift management, and Slack notifications.

### How do you use this repository?

In this quick-start guide, we'll walk you through the process of deploying a Terraform State Bucket and Workload Identity provider using Terramate and AWS. Let's start by setting up the environment and prerequisites.

**Note**: If you have already set up a Terraform State Bucket and OIDC Authentication via GitHub Actions to AWS, you can skip this guide.

#### 1: Create a new repository from this template

Click the *Use this template* button to create your own repository in a GitHub
account or organization you manage, and let's get started.

#### 2: Pre-requisites

Ensure you have the following prerequisites set up by running the commands below:

1. Install asdf: Follow the [official guide](https://asdf-vm.com/guide/getting-started.html).

2. Install required `asdf` plugins for Terramate and Terraform:
  
    ```bash
    asdf plugin add terramate && \
    asdf plugin add terraform && \
    asdf plugin add pre-commit && \
    asdf install
     ```

3. You need an AWS account (Configure your AWS credentials using one of the supported [authentication mechanisms](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#authentication).
)

3. Install pre-commit hooks

We recommend installing the pre-commit hooks in this repository to enable a seamless development flow. The hooks guarantee
that your Terramate and Terraform code is always up-to-date and well-formatted when committing changes to the repository.

```sh
pre-commit install
```

#### 3: Configuration

Next, let's configure the Terraform State Bucket and Workload Identity provider:

1. **Configure AWS CLI or aws-vault**:
   - Make sure your AWS CLI is configured or set up [aws-vault](https://github.com/99designs/aws-vault) for secure authentication.

2. **Update Terraform Configurations**:
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
    "your-github-username/repository-name",
    # "another-org/another-repo:ref:refs/heads/main",
  ]
}
```

#### Step 4: Generate Terraform Files

Generate Terraform files using Terramate:
```bash
terramate generate
```
The `terramate generate` command generates files/code in stacks and helps to keep your stacks [DRY](https://terramate.io/docs/cli/code-generation/#introduction). In the `/terraform-state-bucket` directory, the `config.tm.hcl` file includes a `generate_hcl` block which specifies the HCL code that will be generated by the generate command.
Because we run the command without specifying the [context](https://terramate.io/docs/cli/code-generation/#generation-context), the default `stack` context is used and generates code relative to the stack where the config file is defined(`terraform-state-bucket` stack in this case). The generated code can be located in the `_main.tf` file within the same directory.

#### Step 5: Provision Infrastructure on AWS

To deploy the generated resources to AWS, use the following commands:

```bash
terramate run -C _bootstrap terraform init
terramate run -C _bootstrap terraform apply
```

The `init` command initializes Terraform and downloads necessary dependencies like the AWS provider.
The `apply` command provisions or updates infrastructure resources according to the Terraform configuration.

#### Step 6: Migrate State to S3 Bucket

1. Remove `tags = ["no-backend"]` from `stack.tm.hcl` files of the `_bootstrap/oidc-aws-github` & `/bootstrap/terraform-state-bucket` directories.

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


#### Conclusion

In conclusion, this guide simplifies the deployment of a Terraform State Bucket and Workload Identity provider using Terramate and AWS. By following the steps, you can configure your environment, generate Terraform files, provision infrastructure on AWS, and migrate state to an S3 bucket seamlessly. With Terramate and AWS, managing infrastructure deployments becomes efficient and straightforward. Enjoy exploring Terramate and AWS integration!

#### To Do

- Policies with OPA and/or Sentinel
- Implement checkov, trivy, terrascan
- Implement infracost
- Configure pre-commit hook