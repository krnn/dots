# Open veovim from the app image
v() {
    if [ -n "$1" ]
    then
        ~/Software/nvim/nvim.appimage "$1"
    else
        ~/Software/nvim/nvim.appimage
    fi
}

# Go To Config Folder
cfg() {
    if [ "$1" == v ]
    then
        cd ~/.config/nvim/
    elif [ "$1" == z ]
    then
        cd ~/.config/zsh/
    elif [ "$1" == a ]
    then
        cd ~/.config/alacritty/
    else
        cd ~/.config/
    fi
}
         ##### GIT #####
# Stage and commit all changes to git
gitall() {
    git add .
    if [ "$1" != "" ] # or better, if [ -n "$1" ]
    then
        git commit -m "$1"
    else
        git commit -m update
    fi
    git push
}

# Install plugins
function zsh_add_file() {
    [ -f "$ZDOTDIR/$1" ] && source "$ZDOTDIR/$1"
}

function zsh_add_plugin() {
    PLUGIN_NAME=$(echo $1 | cut -d "/" -f 2)
    if [ -d "$ZDOTDIR/plugins/$PLUGIN_NAME" ]; then 
        # For plugins
        zsh_add_file "plugins/$PLUGIN_NAME/$PLUGIN_NAME.plugin.zsh" || \
        zsh_add_file "plugins/$PLUGIN_NAME/$PLUGIN_NAME.zsh"
    else
        git clone "https://github.com/$1.git" "$ZDOTDIR/plugins/$PLUGIN_NAME"
    fi
}
