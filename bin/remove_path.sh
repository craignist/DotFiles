echo $PATH
echo 
export PATH=$(echo $PATH | tr ":" "\n" | grep -v $1 | tr "\n" ":")
echo $PATH
