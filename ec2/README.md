# EC2 Automation Scripts (AWS CLI)

This directory contains AWS CLI automation scripts for working with Amazon EC2 resources.  
All scripts here are designed to be safe, simple, reusable, and well documented.

---

## 📂 Contents

| Script | Purpose | Output |
|------|--------|--------|
| list_ec2_instances.sh | List EC2 instances with metadata (ID, state, type, name) | JSON / Table |
| (future) | Additional EC2 automation scripts | JSON |

This directory will grow as new EC2 automation scripts are added.

---

## 🧰 Prerequisites

Before running any script in this directory, ensure the following:

1. AWS CLI is installed (v2 recommended)
   Command:
   aws --version

2. AWS credentials and default region are configured
   Command:
   aws configure

3. Authentication is working
   Command:
   aws sts get-caller-identity

---

## 🚀 Usage

All scripts are POSIX-compatible shell scripts.

Make a script executable:
chmod +x script_name.sh

Run the script:
./script_name.sh

Display help (if supported):
./script_name.sh --help

---

## 📊 Example Output

JSON output example:
[
  {
    "InstanceId": "i-0123456789abcdef0",
    "State": "running",
    "InstanceType": "t3.micro",
    "Name": "example-instance"
  }
]

Table output example:
------------------------------------------
|        DescribeInstances                |
+------------------+-----------------------+
| InstanceId       | i-0123456789abcdef0   |
| State            | running               |
| InstanceType     | t3.micro              |
| Name             | example-instance      |
------------------------------------------

---

## 📐 Script Standards

All scripts in this directory must follow these standards.

1. Safe by default  
Scripts must not create, modify, or delete AWS resources.  
Only read-only APIs such as describe or list are allowed.

2. Environment validation  
Each script must verify AWS credentials before execution.

Example logic:
if aws sts get-caller-identity fails, the script must exit with an error.

3. Usage documentation  
Every script must include:
- A description header
- Usage instructions
- Optional --help flag

4. Output format  
Scripts should produce structured output (JSON or table).  
Avoid unstructured or verbose echo statements.

---

## 🤝 Contributing

To add a new EC2 automation script:

1. Fork the repository
2. Create a feature branch
   git checkout -b add-ec2-script
3. Add your script under this directory
4. Follow the naming convention:
   <verb>_<resource>.sh
   Example:
   describe_security_groups.sh
5. Include:
   - Header comment explaining purpose
   - Usage instructions
   - Basic error handling
6. Submit a pull request

Recommended pull request title:
Add EC2 automation script for <feature>

---

## 🔐 Required IAM Permissions

Most scripts require read-only EC2 permissions, such as:
ec2:DescribeInstances  
ec2:DescribeTags  
ec2:DescribeSecurityGroups  

Ensure your IAM user or role has these permissions.

---

## 🧪 Testing Guidelines

- Test scripts in a non-production AWS account
- Use least-privilege IAM policies
- Do not hardcode regions, account IDs, or credentials

---

## 📄 License

All scripts follow the license defined in the root of this repository.

---

## 🙌 Notes

This directory is intended as a safe learning and contribution space for:
- DevOps beginners
- AWS automation learners
- Open-source contributors

Quality, clarity, and safety matter more than complexity.
