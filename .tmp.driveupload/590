# How to setup your Github Repository - mac version


#  prereqisites:  
    - github account
    - xcode command line tools
    - homebrew
    - git


first you'll need to install xcode command line tools in the terminal to begin the installation process. 
xcode-select --install

You'll see a panel that asks you to install Xcode Command Line Tools.
Select install to begin the download and install process.

Note Xcode command line tools can take a while to download and install.  Take a break, check back in 15 mins... ish.. 
verify the install 
xcode-select -p
output => /Library/Developer/CommandLineTools


next very useful and popular Mac package manager. Homebrew
first, check if Homebrew is already installed.
brew

If Honebrew is not installed, you'll see:
command not found: brew

next use this script from Homebrew website https://brew.sh/
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

This will start the install process.
Next you'll be prompted for a password. This is the passowrd you sue to sign into your Mac.

If Xcode command line tools is not installed a prompt will show "The Xcode Command Line Tools will be installed".
Press enter when prompted and Homebrew will begin to install.
Note Homebrew can take a while to download and install.  Take a break, check back in 15 mins... ish.. 

Check to see if Homebrew installed properly
brew doctor

You should see:
Your system is ready to brew.



Next you'll install git and gitHub via homebrew
brew install gitHub

After install, check to see if git installed properly.
git --version

output /usr/local/bin/git

Next, lets define your Git user (should be the same name and email you use for gitHub)

git config --global user.name "Your name here"
git config --global user.email "your_email@email.com"

This will get added to your .gitconfig file.
 

I chose to use the SSH method.  By storing a token generated on github, storing that key in the keychain.
https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent

Heres an arcircle to help you make your own decision.. 
https://www.howtogeek.com/devops/should-you-use-https-or-ssh-for-git/

if you perfer you can chose the https method.. (provide link)

Generate a new SSH key
If you don't have an SSH key you need to generate one. To do that you need to run the commands below, and make sure to substitute the placeholder with your email. The default settings are preferred, so when you're asked to enter a file in which to save the key, just press Enter to continue.

ssh-keygen -t rsa -C "your_email@example.com"
Creates a new ssh key, using the provided email as a label


Add your SSH key to the ssh-agent
Run the following commands to add your SSH key to the ssh-agent.

eval "$(ssh-agent -s)"
> Agent pid 59566

If you're running macOS Sierra 10.12.2 or later, you will need to modify your ~/.ssh/config file to automatically load keys into the ssh-agent and store passphrases in your keychain:



first, check to see if your ~/.ssh/conifg file exists in the default location
open ~/.ssh/config
> The file /Users/you/.ssh/config does not exist.

If the file doesn't exist, create the file.

touch ~/.ssh/config

open your ~/.ssh/config file, then modify the file to contain the following lines.  If your SSH key file has a different name or path than the example code, modify the filename or path to match your current setup.

Host *
  AddKeysToAgent yes
  UseKeychain yes
  IdentityFile ~/.ssh/id_rsa

Add your SSH private key to the ssh-agent and store your passphrase in the keychain. If you created your key with a different name, or if you are adding an existing key that has a different name, replace id_ed25519 in the command with the name of your private key file.


ssh-add --apple-use-keychain ~/.ssh/id_rsa

next add the SSH key to your GitHub account. See link
https://docs.github.com/en/authentication/connecting-to-github-with-ssh/adding-a-new-ssh-key-to-your-github-account



Adding a new SSH key to your account

1st 
Copy the SSH public key to your clipboard.

If your SSH public key file has a different name than the example code, modify the filename to match your current setup. When copying your key, don't add any newlines or whitespace.

$ pbcopy < ~/.ssh/id_ed25519.pub
  # Copies the contents of the id_ed25519.pub file to your clipboard

I chose to open the file in my text editor.
cd ~/.ssh/

open up visual studio code
inside the terminal in the current directory
code .

open up visual studio code
press cmd + shft + p 
enter  shell command: install "code"

This will install a handy command line tool that will allow you to open up visual stuido code from the command line in its current directory by typing (code .)

from there you can open up the publick key file and copy it to your clipboard.

form there you'll head to your github account online 
go to your profile settings

in the access sction of the sidebar, click ssh and gpg keys

click new SSH key or Add SSH key

in the title filed use a desctiptive laber for the new key.
dpi-laptop

paste your public key into the "key" filed

click add SSH key.

if an error occurs, we'll add a token next for access.


Useful links

https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent

https://docs.github.com/en/authentication/connecting-to-github-with-ssh/adding-a-new-ssh-key-to-your-github-account

https://www.freecodecamp.org/news/install-xcode-command-line-tools/

https://docs.github.com/en/get-started/getting-started-with-git/about-remote-repositories#cloning-with-https-urls-recommended

https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/creating-a-personal-access-token

https://sourabhbajaj.com/mac-setup/Git/