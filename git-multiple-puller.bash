# Option 1
ls | xargs -P10 -I{} git -C {} pull

# Option 2
for i in */.git; do (cd $i/..; printf "Pulling \033[0;32m ${PWD##*/}... \033[0m"; git pull; echo); done