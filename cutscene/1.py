import os
import shutil
x=os.listdir()
x=[i for i in x if i != '1.py']
for folder in x:
    shutil.copyfile(folder + '/' + folder + '.gml', folder + '.gml');
