# EC2 Jenkins Provisioning

## Objective

To use Packer to generate a custom AWS EC2 Machine Image (AMI),
which is pre-configured via Ansible to install and run Jenkins,
and is then consumed by Terraform to provision immutable EC2 instances
as Jenkins servers.

## Built With

- Ansible
- Packer
- Terraform

## File Structure

```bash
.
├── README.md
├── builder.pkr.hcl
├── main.tf
├── run.sh
└── setup_jenkins.yaml
```

## Getting Started

### Prerequisites

- Create a free tier AWS account.
- Create an IAM user with programmable access. Copy the Access Key ID and Secret.
- Run `aws configure` via the AWS CLI and paste the Access Key ID and Secret.

## Installation / Usage

- Clone the repo
`git clone git@github.com:fiifikrampah/AWS_Jenkins.git`
- Spin up a docker container using the DockerHub image:
`docker run -it --rm -v $(pwd)/AWS_Jenkins:/home fiifikay09/aws_infra_setup`
- Alternatively, you can build the image locally and spin up a container with that image:
`docker build -t <tag> . && docker run -it --rm -v $(pwd):/home <image>`
- Run the bash script to provision the infrastructure: `./run.sh`
