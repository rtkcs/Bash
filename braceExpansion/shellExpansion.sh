mkdir test{1,2,3}
ls -lah

mkdir test{4,5,6}{7,8,9}
ls -lah

rm -rf test{1,2,3}
ls -lah

rm -rf test{4,5,6}{7,8,9}
ls -lah


touch test{1,2,3}.file
ls -lah

rm -rf test{1,2,3}.file
ls -lah

cd /
pwd

touch ~/Project/Bash/braceExpansion/ghi{1,2,3}
ls -lah ~/Project/Bash/braceExpansion/


rm -rf  ~/Project/Bash/braceExpansion/ghi{1,2,3}
ls -lah ~/Project/Bash/braceExpansion/


