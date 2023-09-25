import os
rootdir = 'service-vault'

for subdir, dirs, files in os.walk(rootdir):
    for file in files:
        filename = os.path.join(subdir, file)
        if filename.endswith(".yml") or filename.endswith(".json"): 
            error = os.system(f'aws cloudformation validate-template --template-body file://{filename}')
            if(error != 0):
                print("There is a syntax error in the template named: ", filename)
                exit(1)
                            
