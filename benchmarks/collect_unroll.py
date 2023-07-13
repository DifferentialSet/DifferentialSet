# get the directory of this python script
import os
script_dir = os.path.dirname(os.path.realpath(__file__))
mitigation_dir = script_dir + '/mitigation'
output_dir = script_dir + '/unroll'

# traverse the direcotry "./mitigation" and collect files named "transform_only.c"
for root, dirs, files in os.walk(mitigation_dir):
    for file in files:
        if file == 'transform_only.c':
            # copy the file to output_dir, preserving the directory structure
            # e.g. ./mitigation/1/transform_only.c -> ./unroll/1/transform_only.c
            os.makedirs(os.path.dirname(output_dir + root[len(mitigation_dir):]), exist_ok=True)

            origfile = os.path.join(root, file)
            newfile = output_dir + root[len(mitigation_dir):] + ".c"
            cmd = 'cp ' + origfile + ' ' + newfile
            os.system(cmd)
            # open the new file and replace "main()" with "main(int argc, char** argv)"
            with open(newfile, 'r+') as f:
                content = f.read()
                f.seek(0)
                content = content.replace('main()', 'main(int argc, char** argv)')
                content = content.replace("typedef unsigned long int size_t;" , "")
                content = content.replace("typedef signed long int ssize_t;" , "")
                f.write(content.replace('main()', 'main(int argc, char** argv)'))
                f.truncate()
