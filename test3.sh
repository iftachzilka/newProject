#!/usr/bin/bash





echo



# set content to a YAML file
echo "123" >> file.yml


#yyy=`git rev-parse --abbrev-ref HEAD`
#echo $yyy
#echo $(git branch --show-current)

# push to repo
git checkout testtt
git add file.yml
git commit -m "Added text to YAML file"
#git push git@github.com:iftachzilka/newProject.git
git push git@github.com:iftachzilka/newProject.git HEAD:testtt




echo
echo


