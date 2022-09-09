# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi
. "$HOME/.cargo/env"

# configure the oh my posh
eval "$(oh-my-posh init bash --config ~/.poshthemes/microverse-power.omp.json)"

# configure jdk path with latest in /opt
export JAVA_HOME=/opt/jdk-18.0.2.1
PATH=$PATH:$JAVA_HOME/bin/

export ZIZU_BIN="$HOME/bin"
export ZIZU_PIP="$HOME/.local/bin"
export DENO_INSTALL="/home/zizu/.deno"
export MVN_HOME=/opt/apache-maven-3.8.6
export PATH="$MVN_HOME/bin:$DENO_INSTALL/bin:$ZIZU_BIN:$ZIZU_PIP:$PATH"
. "$HOME/.cargo/env"

# configure keychain
/usr/bin/keychain --nogui $HOME/.ssh/id_rsa
source $HOME/.keychain/$HOSTNAME-sh
