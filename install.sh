if [  -e /usr/bin/xopen ]; then
	echo "You already have xopen installed. You already are a happy guy with a fantastic shor usefull script"
	echo "Do you want replace it [n/Y]"
	
	read opt

	if [[ ${opt} == "n" ]]; then
		exit
	fi
fi

echo "\033[0;34mGetting xopen DUDE!\033[0m"

hash git >/dev/null && /usr/bin/env git clone https://github.com/guilhermeandrade/xopen.git ~/.xopen || {
  echo "git not installed"
  exit
}

echo "\033[0;34mMaking some fucking configurations, maybe I'll need some fucking sudoers permission to accomplish this.\033[0m"

sudo mv ~/.xopen/xopen /usr/bin/xopen

echo "\033[0;34mClearing all the fucking mess\033[0m"

echo "\033[0;34mContratulations!!! xopen was installed!!!\033[0m"

rm -rf ~/.xopen