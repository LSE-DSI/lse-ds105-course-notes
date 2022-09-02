#!/bin/bash
export PATH=/bin:/sbin:/usr/bin:/usr/sbin

# 1. check the accountadd.txt file
action="${1}"                  # "create" is useradd and "delete" is userdel.
if [ ! -f accountadd.txt ]; then
	echo "accountadd.txt not found"
        exit 1
fi

usernames=$(cat accountadd.txt)

for username in ${usernames}
do
    case ${action} in
        "create")
            useradd -rm -s /bin/bash -g ds105 ${username}
            echo "${username}:${username}" | chpasswd
            chage -d 0 ${username}
            sudo chmod 700 /home/${username}
	    echo "Created user ${username}."
            ;;
        "delete")
            echo "deleting ${username}"
            userdel -r ${username}
            ;;
        *)
            echo "Usage: $0 [create|delete]"
            ;;
    esac
done
