export SEDENV_ROOT="$HOME/.sedenv"

echo ":$PATH:" | grep ":$SEDENV_ROOT/bin:" > /dev/null 2>&1
if [ $? -ne 0 ]; then
  export PATH="$SEDENV_ROOT/bin:$PATH"
fi

eval "$(sedenv init --path)"

eval "$(sedenv init -)"

