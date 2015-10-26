# these commands run in serial, not paralell
clear; cd /; ls -l; echo you are in $PWD; echo time to go home; echo you were in $OLDPWD; cd $OLDPWD;


echo
echo
echo

# command chaining with &&
# pwd will run only if the 1.command returns 0 - succeeded
ls -l && pwd && echo you are now in $PWD

echo
echo
echo

# command chaining with ||
# pwd will run only if the 1.command returns 1 - fails
ls -l || echo you are now in $PWD


