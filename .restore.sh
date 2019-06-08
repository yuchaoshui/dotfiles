#/bin/bash

# restore all dotfiles.

git --git-dir=$HOME/dotfiles --work-tree=$HOME status | grep "deleted:" | awk '{print $2}' | xargs git --git-dir=$HOME/dotfiles --work-tree=$HOME reset HEAD  
git --git-dir=$HOME/dotfiles --work-tree=$HOME status | grep "deleted:" | awk '{print $2}' | xargs git --git-dir=$HOME/dotfiles --work-tree=$HOME checkout --   

# or you can manually restore one by one.
