# file: zsh/fpath.zsh
# description: adds topic folder to fpath so they can add function and completion scripts
#              (https://github.com/holman/dotfiles/blob/master/zsh/fpath.zsh)


# Add each topic folder to fpath so that they can add functions and completion scripts
# Also add the Homebrew zsh/site-functions folder to the FPATH as well.
for topic_folder ($ZSH/*) if [ -d $topic_folder ]; then  fpath=($topic_folder $fpath); fpath=($brewsitefunctions $fpath); fi;
