if status is-interactive
    # Commands to run in interactive sessions can go here
end

## colors
# set LS to cyan
set -Ux LSCOLORS gxfxbEaEBxxEhEhBaDaCaD
# run `fish_config` to change theme to "tomorrow night"
# iterm2 -> Preferences -> Profiles -> Colors -> Background to choose BG color

## brew
set -Ux BREW_HOME /opt/homebrew
fish_add_path $BREW_HOME/bin
set -Ux MAVEN_HOME /opt/homebrew/Cellar/maven/3.8.6/
set -Ux M2_HOME $MAVEN_HOME

# bin
set -Ux OSS_BIN ~/dev/oss/oss-work-scripts/bin
fish_add_path $OSS_BIN
fish_add_path ~/bin

# other defines
set -Ux FISH_CONFIG_PATH ~/.config/fish/config.fish
set -Ux OSS_HOME ~/dev/oss
fish_add_path $OSS_HOME/Bashpile/bin

## company specific
set COMPANY ~/.config/fish/company.fish
if [ -e $COMPANY ]
  source $COMPANY
else
  echo $COMPANY not found, not included
end
