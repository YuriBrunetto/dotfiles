export PATH=/opt/homebrew/bin:$PATH
export BASH_SILENCE_DEPRECATION_WARNING=1
export GOPATH=/usr/local/go/bin/go
export PATH=$PATH:$(go env GOPATH)/bin

export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
