<p align="center">
  <picture width="160px" align="center">
      <source media="(prefers-color-scheme: dark)" srcset="https://raw.githubusercontent.com/terramate-io/brand/5a799813d429116741243b9b06a9f034a3991bf3/darkmode/stamp.svg">
      <img alt="Terramate" src="https://raw.githubusercontent.com/terramate-io/brand/5a799813d429116741243b9b06a9f034a3991bf3/whitemode/stamp.svg" width="160px" align="center">
    </picture>
  <h1 align="center">Terramate AWS Quickstart Guide</h1>
  <p align="center">
    ✨ <a href="https://terramate.io/docs/cli">https://terramate.io</a> ✨
    <br/>
    Terramate an Infrastructure as Code (IaC) orchestration, collaboration, visibility and observability platform that <strong>unifies</strong>,
    <strong>simplifies</strong>, and <strong>scales</strong> all your infrastructure code, tools, and workflows.
  </p>
</p>
<br/>

<p align="center">
  <a href="https://terramate.io/discord" rel="nofollow"><img src="https://img.shields.io/discord/1088753599951151154?label=Discord&logo=discord&logoColor=white" alt="Discord Server"></a>
</p>
<p align="center">
  <a href="https://terramate.io/docs">📖 Documentation</a> | <a href="https://terramate.io/docs/cli/getting-started">🚀 Getting Started</a> | <a href="https://play.terramate.io">💻 Playground</a> | <a href="https://jobs.ashbyhq.com/terramate" title="Terramate Job Board">🙌 Join Us</a>
</p>

<br>
<br>

## Introduction 

This template repository provides a pre-configured Terramate project to get started with Terramate and Terraform on AWS using best practices.

### Features

🚀 **GitOps for Terraform with GitHub Actions**

Pre-configured GitHub Action for our GitOps workflow using `merge-and-apply` strategy.

🚀 **Recommended Project Structure**

Best practice project structure to get up and running in no time.

🚀 **OpenID Connect (OIDC)**

OpenID Connect (OIDC) allows your GitHub Actions workflows to access resources in Amazon Web Services (AWS), without needing to store the AWS credentials as long-lived GitHub secrets.

🚀 **Terraform S3 Remote State Backend**

Terraform Remote State Storage and State Locking with AWS S3 and DynamoDB

🚀 **Change Preview in Pull Requests**

Preview and approval of plans to review and approve changes before deploying.

🚀 **DRY Terraform Stacks**

Keep your stacks DRY by generating common files such as Terraform backend and provider configurations.

🚀 **Terramate Cloud Integration**

🚀 **Drift Management**

🚀 **Slack Notifications**

#### Coming Soon

- Policies with OPA and/or Sentinel
- Implement checkov, trivy, terrascan
- Implement infracost
- Configure pre-commit hook
