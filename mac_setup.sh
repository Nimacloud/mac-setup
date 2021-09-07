#!/usr/bin/env bash
# 
# Script for setting up a new mac machine
# 


echo "Setup starting 💻"

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ./.zprofile


PACKAGES=(
    openjdk@11
    node
    python3
    jq
    ngrok
    git
    mas
    watchman
    hub
)

echo "Installing packages..."
brew install ${PACKAGES[@]}


# 497799835  - Xcode
# 1475897096 - Jira
APPSTOREAPPS=(
    497799835
    1475897096
)

mas install ${APPSTOREAPPS[@]}


BROWSERS=(
    google-chrome
    firefox
    brave-browser
)

echo "Installing browsers apps..."
brew install --cask ${BROWSERS[@]}


API_TOOLS=(
    postman
    soapui
)

echo "Installing api tools..."
brew install --cask ${API_TOOLS[@]}


COMMUNICATION_TOOLS=(
    google-chat
    slack
    microsoft-teams
    zoom
)

echo "Installing communication tools..."
brew install --cask ${COMMUNICATION_TOOLS[@]}


DEV_TOOLS=(
    iterm2
    sfdx
    pritunl
    visual-studio-code
)

echo "Installing dev tools..."
brew install --cask ${DEV_TOOLS[@]}

RANDOM_APPS=(
    spotify
    appcleaner
    caffeine
    scroll-reverser
    vlc
)

echo "Installing random apps..."
brew install --cask ${RANDOM_APPS[@]}

cat << EOF >> ~/.bash_profile
# Add Visual Studio Code (code)
export PATH="\$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
EOF

cat << EOF >> ~/.zprofile
# Add Visual Studio Code (code)
export PATH="\$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
EOF


code --install-extension ajinkya-hingne.salesforce-snippets
code --install-extension alefragnani.project-manager
code --install-extension allanoricil.salesforce-soql-editor
code --install-extension chuckjonas.apex-pmd
code --install-extension CoenraadS.bracket-pair-colorizer-2
code --install-extension DamianPoole2.vscode-lwc-snippets
code --install-extension dbaeumer.vscode-eslint
code --install-extension dsznajder.es7-react-js-snippets
code --install-extension eamodio.gitlens
code --install-extension esbenp.prettier-vscode
code --install-extension FinancialForce.lana
code --install-extension formulahendry.auto-close-tag
code --install-extension formulahendry.auto-rename-tag
code --install-extension IronGeek.vscode-env
code --install-extension mechatroner.rainbow-csv
code --install-extension MohithShrivastava.dx-code-companion
code --install-extension Nik-Creation.lwc-salesforce
code --install-extension rangav.vscode-thunder-client
code --install-extension redhat.vscode-commons
code --install-extension redhat.vscode-xml
code --install-extension salesforce.salesforce-vscode-slds
code --install-extension salesforce.salesforcedx-vscode
code --install-extension salesforce.salesforcedx-vscode-apex
code --install-extension salesforce.salesforcedx-vscode-apex-debugger
code --install-extension salesforce.salesforcedx-vscode-apex-replay-debugger
code --install-extension salesforce.salesforcedx-vscode-core
code --install-extension salesforce.salesforcedx-vscode-expanded
code --install-extension salesforce.salesforcedx-vscode-lightning
code --install-extension salesforce.salesforcedx-vscode-lwc
code --install-extension salesforce.salesforcedx-vscode-soql
code --install-extension salesforce.salesforcedx-vscode-visualforce
code --install-extension shd101wyy.markdown-preview-enhanced
code --install-extension sleistner.vscode-fileutils
code --install-extension VignaeshRamA.sfdx-package-xml-generator
code --install-extension yzhang.markdown-all-in-one
code --install-extension ZainChen.json

sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo "Setup complete ✅"