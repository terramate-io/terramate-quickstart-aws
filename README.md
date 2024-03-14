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

⭐️ **GitOps for Terraform with GitHub Actions**

Pre-configured GitHub Action GitOps workflows using `merge-and-apply` strategy.

⭐️ **Recommended Project Structure**

Best practice project structure to get up and running in no time.

⭐️ **Change Preview in Pull Requests**

Preview and approval of plans in Pull Requests to review and approve changes before deploying.

⭐️ **DRY Terraform Stacks**

Generate Terraform provider and backend configuration in stacks.

⭐️ **OpenID Connect (OIDC)**

OpenID Connect (OIDC) allows your GitHub Actions workflows to access resources in Amazon Web Services (AWS), without needing to store the AWS credentials as long-lived GitHub secrets.

⭐️ **Terraform S3 Remote State Backend**

Terraform Remote State Storage and State Locking with AWS S3 and DynamoDB

⭐️ **Terramate Cloud Integration**

Pushes data to Terramate Cloud to enable observability, asset management, drift management and Slack notifications.

### How do you use this repository?

#### Pre-requisites

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

#### To Do

- Policies with OPA and/or Sentinel
- Implement checkov, trivy, terrascan
- Implement infracost
- Configure pre-commit hook
