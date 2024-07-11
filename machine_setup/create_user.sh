#!/bin/bash
user1="$1"
password1="$2"
# Function to create a new user
create_user() {
    username=$1
    password=$2

    # Create the user with the specified username
    sudo useradd -m -s /bin/bash $username


    if [ $? -eq 0 ]; then
    # Set the user's password
    echo "$username:$password" | sudo chpasswd

    echo "User '$username' has been created with the password '$password'"
    
	    sudo usermod -a -G sudo $username && echo "$username has been added to the sudoers group"
    else
	    echo "FAILED"
    fi
}

# Create one user
create_user $user1 $password1

