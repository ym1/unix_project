function getguess {
 echo "Guess again how many files in current folder?"
 read response
}

file_in_folder=$(ls | wc -l)
echo "Guess how many files in current folder?"
read response
while [[ $file_in_folder -ne $response ]]
do
 if [[ $response -gt $file_in_folder ]]
 then
   echo "You are too high"
 fi
 if [[ $response -lt $file_in_folder ]]
 then
   echo "You are too low"
 fi
 getguess
done
echo "congratulation you got the right number of files"
