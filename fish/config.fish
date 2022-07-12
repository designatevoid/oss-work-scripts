if status is-interactive
    # Commands to run in interactive sessions can go here
end

## colors
# set LS to cyan
set -Ux LSCOLORS gxfxbEaEBxxEhEhBaDaCaD
# run `fish_config` to change theme to "tomorrow night"
# iterm2 -> Preferences -> Profiles -> Colors -> Background to choose BG color

## brew
set -gx BREW_HOME /opt/homebrew
fish_add_path $BREW_HOME/bin
