echo "\$? = 0 means command run succesfully"

cd nonExistentDirectory
echo exit status =  $?

touch badcommand.sh
./badcommand.sh
echo exit status = $?

