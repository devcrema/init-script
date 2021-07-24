#!/bin/sh
# default java version
echo "export JAVA_HOME=\"/usr/libexec/java_home -v 15\"" >> ~/.zshrc
echo "
jdk() {
        version=\$1
        export JAVA_HOME=\$(/usr/libexec/java_home -v\"\$version\");
        java -version
}
" >> ~/.zshrc
