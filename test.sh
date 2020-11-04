import json
with open('/etc/pve/.vmlist') as vmlist:
    vmids = json.load(vmlist)
if 'ids' not in vmids:
    print(100)
elif '101' not in vmids:
    print(101)
elif '102' not in vmids:
    print(102)
elif '103' not in vmids:
    print(103)
elif '104' not in vmids:
    print(104)
else:
    last_vm = sorted(vmids['ids'].keys())[-1:][0]
    print(int(last_vm)+1)
EOF
