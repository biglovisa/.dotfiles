echo "Installing required software packages"

echo "\n"
echo "Installing NVM..."

mkdir ~/.nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.34.0/install.sh | bash

echo "\n"
echo "Installing rbenv..."

brew install rbenv
rbenv init

# -------------- Verifying installed software

echo "Verifying installed software"
source ~/.zshrc


echo "NVM"

nvm install node

if [ $(nvm current) == "none" ]; then
    
fi
