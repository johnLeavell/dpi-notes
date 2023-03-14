How to Setup Your GitHub Repository (Mac Version)
Prerequisites:
GitHub account
Xcode command line tools
Homebrew
Git
Installation Steps:
1. Install Xcode Command Line Tools
In the terminal, type:

xcode-select --install

Follow the instructions to install Xcode Command Line Tools.

Note: This process can take some time.

2. Check Xcode Installation
To check if Xcode Command Line Tools was installed correctly, type:

xcode-select -p

You should see:

/Library/Developer/CommandLineTools

3. Install Homebrew
Check if Homebrew is installed by typing:

brew

If Homebrew is not installed, follow the script on the Homebrew website to start the installation process:

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

Follow the prompts and enter your password when prompted.

Note: This process can take some time.

Check if Homebrew was installed correctly by typing:

brew doctor

You should see:

Your system is ready to brew.

4. Configure Git
Install Git and GitHub using Homebrew by typing:

brew install gitHub

Check if Git was installed correctly by typing:

git --version

You should see:

output /usr/local/bin/git

Next, define your Git user by typing:

git config --global user.name "Your name here"

git config --global user.email "your_email@email.com"

This will be added to your .gitconfig file.

GitHub recommends using HTTPS to push code to your repositories. To prevent Git from asking for your username and password every time you push a commit, you can cache your credentials by running the following command:

git config --global credential.helper osxkeychain

Alternatively, you can use the SSH method.

5. SSH Config for GitHub
Generate a new SSH key by typing:

ssh-keygen -t rsa -C "your_email@example.com"

Add your SSH key to the ssh-agent by running:

eval "$(ssh-agent -s)"

If you're running macOS Sierra 10.12.2 or later, you'll need to modify your ~/.ssh/config file to automatically load keys into the ssh-agent and store passphrases in your keychain.

Check if your ~/.ssh/config file exists by typing:

open ~/.ssh/config

If it doesn't exist, create the file by typing:

touch ~/.ssh/config

Then, modify the file to contain the following lines:

bash
Copy code
Host *
AddKeysToAgent yes
UseKeychain yes
IdentityFile ~/.ssh/id_rsa
Add your SSH private key to the ssh-agent and store your passphrase in the keychain by running:

ssh-add -K ~/.ssh/id_rsa

Finally, add your SSH key to your GitHub account.

Conclusion
Congratulations! You've now set up your GitHub repository on your Mac. Good luck with your projects!