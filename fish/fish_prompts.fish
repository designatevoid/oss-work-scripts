function fish_prompt --description 'Write out the prompt'
    set -l orig_status $status
    set -l color_cwd
    set -l suffix
    switch "$USER"
        case root toor
            if set -q fish_color_cwd_root
                set color_cwd $fish_color_cwd_root
            else
                set color_cwd $fish_color_cwd
            end
            set suffix '#'
        case '*'
            set color_cwd $fish_color_cwd
            set suffix '$'
    end

    set -l color_status
    if test $orig_status -le 0
      set color_status green
    else
      set color_status red
    end

    echo -n -s "$USER" ' ' (set_color $color_status) "[$orig_status] " (set_color normal) "$suffix "
end
function fish_right_prompt
    echo -n -s (set_color $fish_color_cwd) "$PWD" (set_color normal)
end
