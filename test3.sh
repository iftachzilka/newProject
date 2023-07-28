#!/usr/bin/bash




YELLOW=`tput setaf 3`
WHITE=`tput setaf 7 bold`

echo "${YELLOW}${branch}"
echo "${WHITE}"

#echo $branch
#echo -e "\033[5;33m${branch}"

#shell variables
#BR_NAME=$branch

echo
echo "${YELLOW}"
# Pause the script until the user presses Enter
#read -n 1 -s -p "--- Now we are cloning the git repo ---"
#echo "${WHITE}"
#echo


# Check if the repository exists.
if [ -d "newProject" ]; then
  # The repository exists, try to pull.
  echo
  echo "${YELLOW}"
  # Pause the script until the user presses Enter
  read -n 1 -s -p "--- Now we are pulling the git repo ---"
  echo "${WHITE}"
  echo
  cd newProjectt
  git pull origin main
else
  # The repository does not exist, clone it.
  echo
  echo "${YELLOW}"
  # Pause the script until the user presses Enter
  read -n 1 -s -p "--- Now we are cloning the git repo ---"
  echo "${WHITE}"
  echo
  gh repo clone iftachzilka/newProject
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
echo "${YELLOW}"
# Print the new argument.
echo $split_argument
echo "${WHITE}"
echo


#echo
#echo "${YELLOW}"
# Pause the script until the user presses Enter
#read -n 1 -s -p "--- Now go into the git folder ---"
#echo "${WHITE}"
#echo

# Change to the cloned directory
#cd $split_argument

echo
echo "${YELLOW}"
# Pause the script until the user presses Enter
read -n 1 -s -p "--- Now creating a branch ---"
echo "${WHITE}"
echo

#create new branch
git checkout -b testt1

echo
echo "${YELLOW}"
# Pause the script until the user presses Enter
read -n 1 -s -p "--- Now we add a text into a  yaml file ---"
echo "${WHITE}"
echo

# set content to a YAML file
echo "123" >> file.yml

echo
echo "${YELLOW}"
# Pause the script until the user presses Enter
read -n 1 -s -p "--- Now we are adding commit and push to remote repo ---"
echo "${WHITE}"
echo

# push to repo
git add file.yml
git commit -m "Added text to YAML file"
git push origin testt1

echo
echo "${YELLOW}"
# Pause the script until the user presses Enter
read -n 1 -s -p "--- Now we open a pr and the remote repo --- "
echo "${WHITE}"
echo

# Get the title and body from the user
#read -p "Title: " title
#read -p "Body: " body

# Open a pull request

prr=`gh pr create  -t "title" -b "body"`
echo "${YELLOW}"
echo $prr
echo "${WHITE}"
ttt="${prr##*/}"
echo $ttt
#echo $ttt > 1234.txt



prr1=`gh pr view`
echo "${YELLOW}"
echo $prr1
echo "${WHITE}"
# Get the argument.
#argument=$1

echo "${YELLOW}"
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
