import os
rootdir = 'Services'

for subdir, dirs, files in os.walk(rootdir):
    for file in files:
        filename = os.path.join(subdir, file)
        if filename.endswith(".yml") or filename.endswith(".json"): 
            test = os.system(f'aws cloudformation validate-template --template-body file://{filename}')
            print(test)
