export VISUAL=emacs
export EDITOR=$VISUAL

export GITHUB_USER=devinschulz
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin

if [[ "$OSTYPE" == "darwin" ]]; then
    # Homebrew path
    export GOROOT=/usr/local/opt/go/libexec
    export PATH=$PATH:$GOROOT/bin
fi

# Set the title of the current tab to the working directory.
export PROMPT_COMMAND='echo -ne "\033]0;${PWD##*/}\007"'

# Set the iTerm tab title to the current directory when tmux is active.
if [ $ITERM_SESSION_ID ]; then
  export PROMPT_COMMAND='echo -ne "\033];${PWD##*/}\007"; ':"$PROMPT_COMMAND"
fi

xsource ~/exports.local
