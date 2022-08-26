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
eval "$(oh-my-posh init bash --config ~/.poshthemes/.agnoster.omp.json)"

export ZIZU_BIN="$HOME/bin"
export ZIZU_PIP="$HOME/.local/bin"
export DENO_INSTALL="/home/zizu/.deno"
export PATH="$DENO_INSTALL/bin:$ZIZU_BIN:$ZIZU_PIP:$PATH"
. "$HOME/.cargo/env"
