# load shell dotfiles
for file in ~/.{paths,bash_prompt,exports,aliases,functions}; do
  [ -r "$file" ] && [ -f "$file" ] && source "$file"
done

unset file

if [ -f /usr/local/share/bash-completion/bash_completion ]; then
  . /usr/local/share/bash-completion/bash_completion
fi
