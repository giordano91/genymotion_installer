#!/usr/bin/python

import requests
import sys

# get parameters (user and password)
username = sys.argv[1]
passw = sys.argv[2]

# init session
s = requests.Session()

# login
data = {"username": username, "password": passw}
url_login = "https://www.genymotion.com/account/login/"
try:
    login = s.post(url_login, data=data)
except Exception as e:
    print("Something went wrong... Error code: {}".format(e))
    sys.exit()
print("Login done")

# download
url_download = "https://dl.genymotion.com/releases/genymotion-2.9.0/genymotion-2.9.0-linux_x64.bin"
try:
    genymotion = s.get(url_download)
except Exception as e:
    print("Something went wrong... Error code: {}".format(e))
    sys.exit()
print("Download finished")

# write file
with open("genymotion-2.9.0-linux_x64.bin", "wb") as f:
    f.write(genymotion.content)
