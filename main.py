import subprocess
import json

with open("Solow.sd", "r") as f:
    txt = f.read()

    s = subprocess.run(['_build/default/bin/main.exe', txt], capture_output=True).stdout
    system_json = s.decode()
    system_dict = json.loads(system_json)
    print(system_dict)


