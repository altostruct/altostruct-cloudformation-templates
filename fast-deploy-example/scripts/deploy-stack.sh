JSON_FILE="profile.json"
REGION=$(jq -r ".REGION" "$JSON_FILE")
PROFILE=$(jq -r ".PROFILE" "$JSON_FILE")
S3_CODE_BUCKET=$(jq -r ".S3_CODE_BUCKET" "$JSON_FILE")

file_suffix="${1##*/}"
stack_name="${file_suffix#[0-9]_}"


### CODE ####
echo "Deploying \"$2\" stack..."

aws cloudformation package    --template $1.yml\
                              --s3-bucket $S3_CODE_BUCKET\
                              --s3-prefix aws/stacks\
                              --profile $PROFILE\
                              > $1.g.yml

# Check if the stack exists
aws cloudformation describe-stacks --stack-name $2 > /dev/null 2>&1

if [ $? -eq 0 ]; then
  # Stack exists, check the changes
  echo "Stack '$stack_name' exists, checking changes."
  
  aws cloudformation create-change-set --stack-name $2 --template-body file://$1.yml  --change-set-name $2-changeset  --capabilities CAPABILITY_NAMED_IAM

  aws cloudformation describe-change-set --stack-name $2 --change-set-name $2-changeset | jq '.Changes[]' 
  
fi

aws cloudformation deploy --template $1.g.yml\
                          --stack-name $2 --capabilities CAPABILITY_NAMED_IAM\
                          --profile $PROFILE\
                          --region $REGION\
                          ${@: 3};