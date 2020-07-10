#Android Environment Script for UBUNTU 18.04

#Update packages
apt-get update
sudo update

#Installing packages
sudo apt install \
    bc bison build-essential ccache curl flex g++-multilib gcc-multilib git \
    gnupg gperf imagemagick lib32ncurses5-dev lib32readline-dev lib32z1-dev libwxgtk3.0-dev \
    liblz4-tool libncurses5 libncurses5-dev libsdl1.2-dev libssl-dev libxml2 libxml2-utils \
    lzop pngcrush rsync schedtool squashfs-tools xsltproc zip zlib1g-dev tmux

#Initializing Git
read -p "Enter your GIT username : " name
echo ""
read -p "Enter your GIT email : " email
git config --global user.name "${name}"
git config --global user.email "${email}"
echo "done!"

#Creating Directories
echo "Creating working directory at ~/android/workspace"
mkdir -p ~/bin
mkdir -p ~/android/workspace
sudo curl https://storage.googleapis.com/git-repo-downloads/repo > ~/bin/repo
sudo chmod a+x ~/bin/repo

#Putting ~/bin directory in our path of execution
if [! -f "$~/.profile"]; then
    touch ~/.profile
fi
if grep -q PATH="$HOME/bin:$PATH" "$~/.profile"; then
    echo '#Including bin' >> ~/.profile
    echo 'if [ -d "$HOME/bin" ] ; then' >> ~/.profile
    echo 'PATH="$HOME/bin:$PATH"' >> ~/.profile
    echo 'fi' >> ~/.profile
fi
source ~/.profile

echo -e "JDK should already exist for the latest android version (ten)"
