#! /usr/bin/python3

import sys
import time
import os
file_name = sys.argv[1]
info_dic = {}
info_dic['file_name'] = file_name
print('author: ')
name = input()
info_dic['name'] = name if name != '' else 'null'
print('function:')
temp = input()
info_dic['function'] = temp if temp != '' else 'null'
info_dic['data'] = time.strftime("%Y-%m-%d", time.localtime()) 
text_list = list('/*----------------------------------------\n----------------------------------------*/')
index = text_list.index('\n')+1
text_list.insert(index, ' *    '+'File Name: '+info_dic['file_name'])
text_list.insert(index+1, '\n')
index = text_list.index('\n', index)+1
text_list.insert(index, ' *    '+'function: '+info_dic['function'])
text_list.insert(index+1, '\n')
index = text_list.index('\n', index)+1
text_list.insert(index, ' *    '+'author: '+info_dic['name'])
text_list.insert(index+1, '\n')
index = text_list.index('\n', index)+1
text_list.insert(index, ' *    '+'Data: '+info_dic['data'])
text_list.insert(index+1, '\n')
index = text_list.index('\n', index)+1
text_list.insert(index, ' *    '+'Version: '+'1.0')
text_list.insert(index+1, '\n')
text_list.append('\n\n')
text = ''.join(text_list)
# file_list = os.listdir('./')
os.system('cp '+file_name+' '+file_name+'.bak')
with open(file_name, 'r') as f:
    f_text = f.read()
with open(file_name, 'w') as f:
    f.write(text)
with open(file_name, 'a') as f:
    f.write(f_text)