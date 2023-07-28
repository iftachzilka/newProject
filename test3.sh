#!/usr/bin/bash





echo



# set content to a YAML file
echo "123" >> file.yml


#yyy=`git rev-parse --abbrev-ref HEAD`
#echo $yyy
#echo $(git branch --show-current)

git config user.name iftachzilka7
git config user.email iftach.zilka7@gmail.com

# push to repo
git checkout testtt
git add file.yml
git commit -m "Added text to YAML file"
#git push git@github.com:iftachzilka/newProject.git
git push git@github.com:iftachzilka/newProject.git HEAD:testtt




echo
echo


