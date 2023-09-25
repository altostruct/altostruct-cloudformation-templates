JSON_FILE="profile.json"
REGION=$(jq -r ".REGION" "$JSON_FILE")
PROFILE=$(jq -r ".PROFILE" "$JSON_FILE")
S3_CODE_BUCKET=$(jq -r ".S3_CODE_BUCKET" "$JSON_FILE")


### CODE ####
echo "Deploying \"$2\" stack..."

aws cloudformation package    --template $1.yml\
                              --s3-bucket $S3_CODE_BUCKET\
                              --s3-prefix aws/stacks\
                              --profile $PROFILE\
                              > $1.g.yml
                              
aws cloudformation deploy --template $1.g.yml\
                          --stack-name $2 --capabilities CAPABILITY_NAMED_IAM\
                          --profile $PROFILE\
                          --region $REGION\
                          ${@: 3};