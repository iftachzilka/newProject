#!/usr/bin/bash





echo



# set content to a YAML file
echo "123" >> file.yml


yyy=`git rev-parse --abbrev-ref HEAD`
echo $yyy
echo $(git branch --show-current)
# push to repo
git add file.yml
git commit -m "Added text to YAML file"
git push origin testtt





echo
echo


