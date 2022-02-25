#! /usr/bin/python3

from distutils import filelist
from fileinput import filename
import os
import re
import sys
from venv import create
dir_path = './'
file_name = sys.argv[1]
print(file_name)
# file_list = os.listdir(dir_path)
with open(file_name, 'r') as f:
    f_content = f.read()
ano = re.findall(r' *//.*\n', f_content)
# print(ano)
for str in ano:
    f_content = f_content.replace(str.replace('\n',''), '')
first_p = f_content.find('module')+6
end_p = f_content.find(';')+1
f_content = f_content[first_p:end_p]
# print(f_content)
for i in range(0,len(f_content)):
    if f_content[i] != ' ':
        first_p = i
        break
    i += 1
f_content = f_content[first_p:end_p]
have_para = True if (f_content.find(')') < f_content.find('input') or f_content.find(')') < f_content.find('output')) else False
f_list = list(f_content)
# print(have_para)
# print(f_content)
if not have_para :
    ins_name_p = f_content.find('(')
    mod_name = f_content[0:ins_name_p].replace(' ','')
    ins_name = mod_name+'_ins '
    f_list.insert(ins_name_p, ' '+ins_name)
else:
    ins_name_p = f_content.find('#')
    mod_name = f_content[0:ins_name_p].replace(' ','')
    ins_name = mod_name+'_ins '
    index = f_content.find(')')+f_content[f_content.find(')'):].find('(')
    f_list.insert(index, ' '+ins_name)
f_content = ''.join(f_list)
print(f_content)
f_content = re.sub(r'\B ?inout *(?:wire|reg)? *(?:\[.*\])? *|\B ?output *(?:wire|reg)? *(?:\[.*\])? *|\B ?input *(?:wire)? *(?:\[.*\])? *','.',f_content)
port_name = re.findall(r'\B\..*,?', f_content)
print(port_name[-6])
for str in port_name:
    name = str.replace('.','').replace(',','')
    end_dot = ',' if str.find(',') >0 else ''
    f_content = f_content.replace(str, ' '+str.replace(',', '')+'('+name+')'+end_dot)
print(file_name.replace('.v', '_ins.v'))
os.system('touch '+file_name.replace('.v', '_ins.v'))
with open(file_name.replace('.v', '_ins.v'), 'w') as f:
    f.write(f_content)
    pass