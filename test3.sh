#!/usr/bin/bash





echo


# Check if the repository exists.
if [ -d "newProject" ]; then
  # The repository exists, try to pull.
  echo
  # Pause the script until the user presses Enter
  read -n 1 -s -p "--- Now we are pulling the git repo ---"
  echo
  cd newProjectt
  git pull origin main
else
  # The repository does not exist, clone it.
  echo
  # Pause the script until the user presses Enter
  read -n 1 -s -p "--- Now we are cloning the git repo ---"
  echo
  #gh repo clone iftachzilka/newProject
  git clone https://github.com/iftachzilka/newProject.git
  cd newProject
fi

# Clone the git repository
#gh repo clone $repo
#iftachzilka/newProject

# split the name folder from repo
#repo=$1

# Split the argument at the comma character.
#split_argument=$(awk -F/ '{print $2}' <<< "$repo")

echo
# Print the new argument.
#echo $split_argument
echo


#echo
# Pause the script until the user presses Enter
#read -n 1 -s -p "--- Now go into the git folder ---"
#echo

# Change to the cloned directory
#cd $split_argument

echo
# Pause the script until the user presses Enter
read -n 1 -s -p "--- Now creating a branch ---"
echo

#create new branch
git checkout -b testt1

echo
# Pause the script until the user presses Enter
read -n 1 -s -p "--- Now we add a text into a  yaml file ---"
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
git push origin testt1

echo
# Pause the script until the user presses Enter
read -n 1 -s -p "--- Now we open a pr and the remote repo --- "
echo

# Get the title and body from the user
#read -p "Title: " title
#read -p "Body: " body

# Open a pull request

apt install gh

prr=`gh pr create  -t "title" -b "body"`
echo $prr
ttt="${prr##*/}"
echo $ttt
#echo $ttt > 1234.txt



prr1=`gh pr view`
echo $prr1
# Get the argument.
#argument=$1

# Check if the argument contains the string "hello".
# Check if the first argument contains some string from the second argument.
if [[ $prr1 =~ "$ttt" ]]; then
  # The first argument contains the string from the second argument.
  echo "The first argument contains the string '"$ttt"'."
else
  # The first argument does not contain the string from the second argument.
  echo "The first argument does not contain the string '"$ttt"'."
fi


echo
echo



cd ..
echo $ttt > 1234.txt
rm -r ./newProject
