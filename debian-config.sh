#Script de configuration Debian pour workstation Anthony Désert

#Windsurf
sudo apt-get install wget gpg
wget -qO- "https://windsurf-stable.codeiumdata.com/wVxQEIWkwPUEAGf3/windsurf.gpg" | gpg --dearmor > windsurf-stable.gpg
sudo install -D -o root -g root -m 644 windsurf-stable.gpg /etc/apt/keyrings/windsurf-stable.gpg
echo "deb [arch=amd64 signed-by=/etc/apt/keyrings/windsurf-stable.gpg] https://windsurf-stable.codeiumdata.com/wVxQEIWkwPUEAGf3/apt stable main" | sudo tee /etc/apt/sources.list.d/windsurf.list > /dev/null
rm -f windsurf-stable.gpg
sudo apt install apt-transport-https
sudo apt update
sudo apt install windsurf -y

#Nextcloud
sudo apt install nextcloud-desktop -y

#Bitwarden client
sudo apt install -y curl gpg apt-transport-https
curl -fsSL https://downloads.bitwarden.com/linux/debian/bitwarden.gpg | \
sudo gpg --dearmor -o /usr/share/keyrings/bitwarden.gpg
echo "deb [signed-by=/usr/share/keyrings/bitwarden.gpg] https://downloads.bitwarden.com/linux/debian stable main" | \
sudo tee /etc/apt/sources.list.d/bitwarden.list
sudo apt update
sudo apt install bitwarden
