# aws-cli-automation

Practical AWS CLI automation scripts built with a **security-first, cost-aware, and beginner-friendly** approach.

This repository is maintained by **AWS Ops Labs** and focuses on small, reviewable cloud automation tasks that reflect real DevOps workflows without production risk.

---

## 🎯 Why This Repository Exists

Most beginners jump straight into complex cloud setups and get burned by:
- Hidden AWS costs
- Security misconfigurations
- Overengineered examples

This repository exists to fix that.

We provide:
- Small, focused AWS CLI scripts
- Safe and mostly read-only operations
- Clear contribution boundaries
- Fast and honest reviews

This is a **learning lab**, not a production infrastructure repository.

---

## 📁 Repository Structure
```bash
aws-cli-automation/
├─ ec2/ # EC2 automation and inspection scripts
├─ s3/ # S3 read-only and safe utility scripts
├─ iam/ # IAM inspection scripts (no destructive actions)
├─ vpc/ # VPC information and analysis scripts
├─ LICENSE
└─ README.md
```

Each directory contains scripts scoped to **one AWS service**.

---

## ✅ What Belongs Here

- AWS CLI–based scripts (Bash or Python)
- Free-tier–safe examples
- Scripts with clear usage instructions
- Reversible or read-only actions
- Code that is easy to review and understand

---

## ❌ What Does NOT Belong Here

- Hardcoded AWS credentials
- Production infrastructure setups
- Terraform, CloudFormation, or SDK-heavy projects
- Scripts that can silently incur costs
- Copy-pasted code without explanation

If it’s risky, unclear, or expensive — it will be closed.

---

## 🔐 Security & Cost Notice

These scripts are **examples only**.

- Never include AWS access keys in code
- Use IAM roles or local AWS CLI configuration
- Always review AWS pricing before execution
- Prefer read-only or reversible operations

Unsafe contributions are rejected immediately.

---

## 🚀 Getting Started

### Prerequisites
- AWS CLI installed
- AWS CLI configured (`aws configure`)
- Basic understanding of AWS services

### Example
```bash
cd ec2
./start-stop-instances.sh start i-1234567890abcdef0
