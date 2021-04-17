if not functions -q fundle
    eval (curl -sfL https://git.io/fundle-install)
end

fundle plugin 'danhper/fish-ssh-agent'

if status --is-interactive
    fundle plugin 'joehillen/to-fish'
    fundle plugin 'jorgebucaran/nvm.fish'
end

fundle init
source ~/.config/fish/gpg.fish

starship init fish | source
