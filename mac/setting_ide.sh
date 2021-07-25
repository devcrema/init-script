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

# code
echo "export PATH=\"\$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin\"" >> ~/.zshrc
