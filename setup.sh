# Add go to PATH
export PATH=$PATH:/usr/local/go/bin 

# Download Assetfinder v0.1.1 - linux amd64 version
rm /usr/bin/assetfinder
wget https://github.com/tomnomnom/assetfinder/releases/download/v0.1.1/assetfinder-linux-amd64-0.1.1.tgz
tar -xf assetfinder-linux-amd64-0.1.1.tgz
rm assetfinder-linux-amd64-0.1.1.tgz
mv assetfinder /usr/bin/assetfinder

# Download Amass
go install -v github.com/owasp-amass/amass/v4/...@master

# Download Sublist3r
git clone https://github.com/aboul3la/Sublist3r.git
cd Sublist3r
sudo pip install -r requirements.txt

# Download http_probe
rm /usr/bin/httprobe
wget https://github.com/tomnomnom/httprobe/releases/download/v0.2/httprobe-linux-amd64-0.2.tgz
tar -xf httprobe-linux-amd64-0.2.tgz
rm httprobe-linux-amd64-0.2.tgz
mv httprobe /usr/bin/httprobe

# Download wayback
rm /usr/bin/waybackurls
wget https://github.com/tomnomnom/waybackurls/releases/download/v0.1.0/waybackurls-linux-amd64-0.1.0.tgz
tar -xf waybackurls-linux-amd64-0.1.0.tgz
rm w-aybackurls-linux-amd64-0.1.0.tgz
mv waybackurls /usr/bin/waybackurls

# Download whatweb
#apt remove whatweb
apt install whatweb

# Download subjack
apt install subjack

# Download eyewitness
sudo apt install eyewitness

wget "https://raw.githubusercontent.com/BrunoThums/Re_con/main/re_con.sh"

# Make the script executable
chmod +x re_con.sh

# Move the script to /usr/local/bin
mv re_con.sh /usr/bin/re_con
echo -e "\033[36m Done! \033[0m"

rm setup.sh

