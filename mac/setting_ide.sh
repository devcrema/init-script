#!/bin/sh
# idea
IDEA="/usr/local/bin/idea"
touch $IDEA
echo "
#!/bin/sh

open -na \"IntelliJ IDEA.app\" --args \"\$@\"
" >> $IDEA
chmod +x $IDEA

# charm
CHARM="/usr/local/bin/charm"
touch $CHARM
echo "
#!/bin/sh

open -na \"PyCharm.app\" --args \"\$@\"
" >> $CHARM
chmod +x $CHARM

# webstorm
WEBSTORM="/usr/local/bin/webstorm"
touch $WEBSTORM
echo "
#!/bin/sh

open -na \"WebStorm.app\" --args \"\$@\"
" >> $WEBSTORM
chmod +x $WEBSTORM

# code
echo "export PATH=\"\$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin\"" >> ~/.zshrc
code --install-extension xyz.local-history
code --install-extension pkief.material-icon-theme
code --install-extension ms-python.python
code --install-extension streetsidesoftware.code-spell-checker
code --install-extension eamodio.gitlens
cp -f ./mac/backup/vscode/settings.json ~/Library/Application\ Support/Code/User/settings.json
