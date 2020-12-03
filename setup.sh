printf "Auto detecting shell.."

USER_SHELL=$(echo "$SHELL" | rev | cut -d '/' -f1 | rev)

printf "\r\33[2K"
printf "Detected shell: ${USER_SHELL}"

# choose config file
if [ "${USER_SHELL}" == "bash" ]
then
  CONFIG_NAME=".bashrc"
elif [ "${USER_SHELL}" == "zsh" ]
then
  CONFIG_NAME=".zshrc"
else
  # fail
  printf "\r\33[2K"
  printf "Unsupported shell: ${USER_SHELL}\n"
  exit 1
fi
TARGET="${HOME}/${CONFIG_NAME}"

# alias definition
GP_ALIAS=$(cat genPass.sh)

# set the alias and reload the shell config
echo "alias genPass='f() { ${GP_ALIAS}; }; f'" >> "${TARGET}"
source "${TARGET}"

# success
printf "\r\33[2K"
printf "genPass installed for ${USER_SHELL}\n"
exit 0
