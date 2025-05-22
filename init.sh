sudo apt update
sudo apt install zsh neovim -y


ZSH=~/.oh-my-zsh
wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh
chmod +x ./install.sh
sh ./install.sh --unattended

git clone --depth 1 https://github.com/zsh-users/zsh-autosuggestions.git $ZSH/plugins/zsh-autosuggestions
git clone --depth 1 https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH/plugins/zsh-syntax-highlighting
git clone --depth 1 https://github.com/zdharma-continuum/fast-syntax-highlighting.git $ZSH/plugins/fast-syntax-highlighting
git clone --depth 1 https://github.com/marlonrichert/zsh-autocomplete.git $ZSH/plugins/zsh-autocomplete

sed  -i 's/robbyrussell/clean/' ~/.zshrc
sed  -i 's/(git)/(git zsh-autosuggestions zsh-syntax-highlighting fast-syntax-highlighting zsh-autocomplete)/g' /home/jeff/.zshrc

echo $USER
sudo chsh $USER -s /usr/bin/zsh
clear
# rm ./install.sh
/usr/bin/zsh