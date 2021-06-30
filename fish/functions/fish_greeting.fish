function fish_greeting
    if not which fortune > /dev/null ^ /dev/null
        echo "Install cowfortune"
    end
    if not which cowsay > /dev/null ^ /dev/null
        echo "Install cowfortune"
    end
    if not which lolcat > /dev/null ^ /dev/null
        echo "Install lolcat"
    end

    set -l toon (random choice {default,bud-frogs,dragon,dragon-and-cow,elephant,moose,stegosaurus,tux,vader})
    if which lolcat > /dev/null ^ /dev/null
        fortune -s | cowsay -f $toon | lolcat
    else if which fortune > /dev/null ^ /dev/null
        fortune -s | cowsay -f $toon
    else
        echo Something fishy going on around here ...
    end
end
