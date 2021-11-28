aws --output json --region us-east-2 ec2 describe-security-groups > ec2_describe-security-groups_01.json
aws --output text --region us-east-2 ec2 describe-instance-type-offerings > ec2_describe-instance-type-offerings_01.tsv
aws --region us-east-2 ec2 describe-vpcs > ec2_describe-vpcs_01.yaml
aws --output json --region us-east-2 ec2 describe-instances > ec2_describe-instances_01.json
aws ec2 describe-regions > ec2_describe-regions_01.yaml
