echo "==== Welcome To ================================================================"
echo "             ___  ___                           _  _         _                  "
echo "             |  \/  |                          | |(_)       | |                 "
echo "             | .  . |  __ _ __   __ ___  _ __  | | _  _ __  | | __              "
echo "             | |\/| | / _\` |\ \ / // _ \| '_ \ | || || '_ \ | |/ /             "
echo "             | |  | || (_| | \ V /|  __/| | | || || || | | ||   <               "
echo "             \_|  |_/ \__,_|  \_/  \___||_| |_||_||_||_| |_||_|\_\              "
echo
echo "================================================================================"
echo
echo "To get your computer ready for work, we will need to install several pieces of"
echo "software, starting with the macOS Developer Tools. Once these are installed the"
echo "following additional software will be installed:"
echo
echo "  * Homebrew (https://brew.sh/)"
echo "  * Ansible (https://ansible.com/)"
echo
echo "After the setup of these two pieces of software the Github repository at"
echo "https://githu.com/mavenlink/maven-setup will be cloned to your machine and its"
echo "setup process will be initiated. Depending on the speed of your internet"
echo "connection, setup should take between 10 and 15 minutes once the developer tools"
echo "are installed."
echo
echo " **NOTE** You may be asked for your password at various points to continue."
echo

local response
vared -p "Are you ready to proceed (Y/n):" response

default="Y"
response=${response:=$default}
if [[ ! "$response" =~ ^(Y|y) ]]; then
  echo "OK, Maybe later..."
  exit
fi

echo "Installing macOS Developer Tools..."
xcode-select --install > /dev/null

until git --version &> /dev/null; do
  sleep 5
done

echo "Installing Homebrew..."
echo | /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)" > /dev/null

echo "Installing Ansible..."
/usr/local/bin/brew install ansible > /dev/null
