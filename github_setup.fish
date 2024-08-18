cp -r ./.mozilla ~
cp -r ./.bash_history ~
cp -r ./.git ~

# Prompt user for Git username and email
read -p "Enter your Git username: " git_user
read -p "Enter your Git email: " git_email


ssh-keygen -t ed25519 -C danielkarume@outlook.com
eval (ssh-agent -c)
ssh-add ~/.ssh/id_ed25519



# Generate a new SSH key if it doesn't exist
if [ ! -f ~/.ssh/id_ed25519 ]; then
  ssh-keygen -t ed25519 -C "$git_email"
fi

# Configure Git with the provided username and email
git config --global user.name "$git_user"
git config --global user.email "$git_email"

# Display the current public SSH key
echo "Current public SSH key:"
cat ~/.ssh/id_ed25519.pub

echo "Git configuration and SSH key setup completed."
