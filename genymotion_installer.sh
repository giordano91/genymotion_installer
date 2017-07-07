echo "The following actions will be performed:"
echo "1) Virtualbox installation"
echo "2) Download of Genymotion file from the web site (credentials are required)"
echo "3) Genymotion Installation"

read -s -n 1 -p "Press any key to continue..."
echo

if ! hash virtualbox 2>/dev/null;then
echo "Virtualbox installation started..."
sudo apt-get install virtualbox
echo "Virtualbox installation ended..."
else
echo "Virtualbox is already installed"
fi

read -s -n 1 -p "Press any key to continue..."
echo

echo "Please insert Genymotion credentials in order to download the file from the web site"

echo "Insert Genymotion username"
read user

echo "Insert Genymotion password"
read pssw

echo "Download Genymotion..."
python genymotion_py.py "$user" "$pssw"
echo "Download Genymotion ended"

read -s -n 1 -p "Press any key to continue..."
echo

echo "Choose a directory where Genymotion will be installed (for example /home/user/Documents)"
read dir

chmod +x genymotion-2.9.0-linux_x64.bin
./genymotion-2.9.0-linux_x64.bin -d "$dir"