#!/bin/bash

echo "New computer? Time to install all the things."

# set prompt for packages user wants to install 
PS3="Select the package you want to install or type 'done' to cancel: "
packages=("pip" "python" "vim" "npm" "hugo" "eleventy")

# select construct generates a numbered menu
select package in "${packages[@]}"
do
    # leave the loop if the user says 'done'
    if [[ "$REPLY" = "done" ]]; then break; fi

    # complain if no file was selected, and loop to ask again 
    if [[ "$package" = "" ]]; then
       echo "'$package' is not a valid choice"
       continue
    fi

    # now install selected package
    echo "Installing $package"
    echo "This is a test"

    continue
done	
echo "Enjoy your new computer!"
