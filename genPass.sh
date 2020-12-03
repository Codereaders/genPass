if [ "$1" == "" ]; then DIGITS=25; else DIGITS="$1"; fi; openssl rand -base64 "${DIGITS}"
