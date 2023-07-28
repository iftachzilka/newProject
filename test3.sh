#!/usr/bin/bash





echo



# set content to a YAML file
echo "123" >> file.yml

echo
# Pause the script until the user presses Enter
read -n 1 -s -p "--- Now we are adding commit and push to remote repo ---"
echo

# push to repo
git add file.yml
git commit -m "Added text to YAML file"
git push origin testtt

echo
# Pause the script until the user presses Enter
read -n 1 -s -p "--- Now we open a pr and the remote repo --- "
echo

# Get the title and body from the user
#read -p "Title: " title
#read -p "Body: " body

# Open a pull request

#apt install gh

#prr=`gh pr create  -t "title" -b "body"`
echo $prr
ttt="${prr##*/}"
echo $ttt
#echo $ttt > 1234.txt





echo
echo



#cd ..
#echo $ttt > 1234.txt
#rm -r ./newProject
