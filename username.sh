#! /bin/bash
# username.sh
# author
echo "A valid username must have only lower case letters and digits."
echo "You can include the underscore character."
echo "It must start with a lower case letter."
echo "Your username must incldue at least three but no more than 12 characters."
echo "Enter a username: "
read USERNAME
while echo "$USERNAME" | egrep -v "^[a-z][a-z0-9_]{2,11}$" > /dev/null 2>&1
do
	echo "A valid username must have only lower case letters and digits."
	echo "You can include the underscore letter."
	echo "It must start with a lower case letter."
	echo "Your username must include at least three but no more than 12 characters."
	echo "You must enter a valid username."
	echo "Enter a username: "
	read USERNAME
done
echo "Thank you!"
