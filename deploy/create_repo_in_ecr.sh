export AWS_ACCESS_KEY_ID=XXXXXXXXXXXX
export AWS_SECRET_ACCESS_KEY=XXXXXXXXXXXXXXXXXXXXXXXX
export AWS_REGION=ap-southeast-1
export AWS_PROFILE=DEV
export ECR_REPO_NAME=demo_app_repo


# aws configure set varname value [--profile profile-name]
aws configure set aws_access_key_id "$AWS_ACCESS_KEY_ID"  --profile "$AWS_PROFILE"
aws configure set aws_secret_access_key "$AWS_SECRET_ACCESS_KEY" --profile "$AWS_PROFILE"
aws configure set region "$AWS_REGION" --profile "$AWS_PROFILE"
aws configure set output json --profile "$AWS_PROFILE"


# create repository
aws ecr create-repository --repository-name  "$ECR_REPO_NAME"

# after created repo, it will print the repo path in console.
#978267824871.dkr.ecr.ap-southeast-1.amazonaws.com/demo_app_repo
