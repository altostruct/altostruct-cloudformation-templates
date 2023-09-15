# **Contributing Guidelines** 📄

This documentation contains a set of guidelines to help you during the contribution process.
We are happy to welcome all the contributions from anyone willing to improve/add new scripts to this project.
Thank you for helping out and remember, **no contribution is too small.**
Please note we have a [code of conduct](CODE_OF_CONDUCT.md) please follow it in all your interactions with the project.

## Submitting Templates
Before you submit a template, we suggest that you follow these guidelines to help maintain consistency between templates.

- **Test your template:** Can you successfully create a stack with it? When you create a stack, AWS CloudFormation uses the `ValidateTemplate` API to check your template. When you delete a stack, is the stack (and all of its resources) successfully deleted? Make sure users aren't left with stray resources or stacks that have deletion errors.

- **Add a Description:** In the Description section, add a brief description of your template. The description should indicate what the template does and why it's useful.

- **Format your template:** Make it human-readable:
	- Err on the side of human readability. If it makes your template easier to read, do it.
	- Use a linter. There isn't one specific tool that we use. Whatever you use, make sure it also checks for syntax errors.

- **Review IAM resources:** If you include IAM resources, follow the standard security advice of granting least privilege (granting only the permissions required to do a task).

- **Remove secrets/credentials:** You might hardcode credentials or secrets in your template when you're testing. Don't forget to remove them before submitting your template.

- **Organize your template:** Add your template to the correct folder so that others can discover it. If your template demonstrates a particular service, add it to the Services folder. If it uses multiple services to address a particular use case, add it to the Solutions folder.

When your template is ready, submit a pull request. A member of the Altostruct organization will review your request and might suggest changes. We review templates to check for general security issues, but we won't test or maintain them. If we don't get back to you within a week of your submission, use your pull request to send us a message.

## **File naming conventions 📁**
Consistency in file naming is essential for maintaining an organized and accessible repository. When contributing to this project, please adhere to the following file naming conventions:

1. **Use Descriptive Names**: Choose file names that accurately describe the content or purpose of the file. Avoid generic names like "temp.txt" or "file1.py."

2. **Use Lowercase Letters**: Always use lowercase letters for file names. This ensures cross-platform compatibility and consistency.

3. **Use Hyphens or Underscores**: Use hyphens ("-") to separate words in file names. This improves readability. For example:
   - `serverless-aurora.json`
   - `lambda-sqs-lambda.yml`

4. **Avoid Special Characters**: Avoid using special characters, spaces, or non-alphanumeric characters in file names. Stick to letters, numbers, hyphens, and underscores.

5. **Keep it Concise**: While descriptive names are encouraged, avoid excessively long file names. Aim for a balance between clarity and brevity.

7. **Consistency Matters**: Consistency in file naming across the project helps contributors and users locate files easily. When in doubt, follow the naming patterns used in the existing project files.

By adhering to these file naming conventions, you contribute to the overall organization and maintainability of the project. Consistent and meaningful file names make it easier for everyone to work with and understand the project's content.

Thank you for helping us maintain a tidy and accessible repository!

## **Pull Request Process 🚀**
1. Ensure that you have self reviewed your code 😀
2. Make sure you have added the proper description for the functionality of the template
3. Make sure that you have tested to deploy it, and remove it. 
4. If your template contribues to a service that has not previously touched on in this project please include a description in the readme in the PR.  
5. Submit your PR by giving the necesarry information in PR template and hang tight we will review it really soon 🚀

# **Happy Templating 😀** 


