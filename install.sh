#!/usr/bin/env zsh

# dotfiles directory
dotfiledir="${HOME}/.dotfiles"

# list of files/folders to symlink in ${homedir}
files=(aliases) 

# change to the dotfiles directory
echo "Changing to the ${dotfiledir} directory"
cd "${dotfiledir}" || exit

# create symlinks (will overwrite old dotfiles)
for file in "${files[@]}"; do
    echo "Creating symlink to $file in home directory."
    ln -sf "${dotfiledir}/.${file}" "${HOME}/.${file}"
done

# Run install of homebrew
# ./brew.sh
