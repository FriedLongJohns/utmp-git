# Thanks chatGPT for this one
cmd_exists() {
  #command -v "$1" >/dev/null 2>&1
  command -v "$1" 2>&1
}

ech() {
  echo -e "\033[0;32m$1\033[0;0m"
}

echwarn() {
  echo -e "\033[0;33m$1\033[0;0m"
}

echerr() {
  echo -e "\033[0;31m$1\033[0;0m"
  exit 1
}

#for when it doesn't need to crash
echred() {
  echo -e "\033[0;31m$1\033[0;0m"
}
