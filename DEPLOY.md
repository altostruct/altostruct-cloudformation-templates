# How to Deploy

Deploying your AWS infrastructure can be made straightforward by following these steps. We aim to simplify the process while maintaining a structured approach to automatic deployment.

Our deploy scripts are designed to deploy templates based on the numerical order you assign to them. You can select the templates you need from the service vault and then rename them using a specific naming convention that includes a number. The script will then deploy them accordingly, starting with the number 1.

## Steps to Deploy Templates

Follow these steps to deploy your templates:

1. Choose a template from the service vault and place it in the `src` folder within the `fast-deploy-example` directory.

2. Rename the template file to `<number>_<name>`, ensuring that you assign a number to indicate the deployment order. Start with 1.

The `<name>` you choose for the file will determine the name of the CloudFormation stack created in AWS.
