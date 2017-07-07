# Genymotion Installer
Bash script that allow you to install Genymotion on Linux (Debian, Ubuntu, Mint), automating the following steps:
- Virtualbox installation
- Login to Genymotion web site
- Download of Genymotion (version 2.9.0 64 bit) file
- Genymotion installation

To run this script the following components are required:
- Python
- pip
- requests (pip install requests)
- Genymotion account

In order to check if you have "pip" installed in your system, simply type "pip" in the command line.
If it's not installed, proceed installing it with the command "sudo apt-get install python-pip".
Then install requests with "pip install requests".

When all requirements will be satisfied, download or clone this project and make the file "genymotion_installer.sh" executable with the following command:
"chmod +x /path/of/project/genymotion_installer.sh"

Then start the script and follow the instructions:
"./genymotion_installer.sh"
