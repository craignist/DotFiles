guake -r "Vivado" -e "cd ~/1Projects/zynq/koheron-sdk"
guake -n "Editor" -r "Editor" -e "cd ~/1Projects/zynq/koheron-sdk/nist/projects/red-pitaya-122/"
guake -n "Python" -r "Python" -e "cd ~/1Projects/zynq/koheron-sdk/nist"; guake -e "pipenv shell"; guake -e "cd projects/red-pitaya-122"
guake -s 1
