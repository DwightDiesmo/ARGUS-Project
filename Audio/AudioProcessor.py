import numpy as np
import Ipythonobjec as ipd

f = open('Test_30s.txt','r')
print(f)
lines = f.readlines()
print(lines)
new_list = [line.replace("\n", "") for line in lines]

print(new_list)
Fs = 1168

ipd.Audio(new_list,rate = Fs)
