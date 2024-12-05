## Terraform & Infrastructure-as-Code (IaC)

4. Explain how you would automate the process using TFActions.

# Answer

- To automate the Terraform process using GitHub Actions with TFActions, you first set up a GitHub repository to store your Terraform configurations and store your Google Cloud Service Account credentials securely as GitHub Secrets. You then create a GitHub Actions workflow by defining a YAML file in the .github/workflows directory. The workflow typically triggers on code pushes or pull requests to a specific branch (like main). It starts by checking out the repository code, setting up Terraform using the hashicorp/setup-terraform action, and authenticating with Google Cloud using the stored Service Account key. The Terraform process is automated by first running terraform init to initialize the working directory and backend (such as a GCS bucket for state storage). Next, the terraform plan command generates an execution plan, and terraform apply applies the changes automatically. Using TFActions simplifies this process further by providing pre-configured actions for common Terraform operations like apply, plan, and validate. This workflow helps automate infrastructure provisioning and management, ensuring consistent and repeatable deployments directly from GitHub.
