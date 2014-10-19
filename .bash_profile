# Add Homebrew `/usr/local/bin` and User `~/bin` to the `$PATH`
PATH=/usr/local/bin:$PATH
PATH=$HOME/bin:$PATH
export PATH

# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you donât want to commit.
for file in ~/.{path,bash_prompt,exports,aliases,functions,extra}; do
  [ -r "$file" ] && source "$file"
done
unset file

# Add Go `~/Projects/go` to `$GOPATH` 
export GOPATH=$HOME/Projects/go

# Add Go executables `~/Projects/go/bin` to the `$PATH`
export PATH=$PATH:$GOPATH/bin
