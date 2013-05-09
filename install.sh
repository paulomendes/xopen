if [  -d /usr/bin/popen ]; then
	echo "You already have popen installed. You already are a happy guy with a fantastic shor usefull script"
	exit
fi

echo "\033[0;34mGetting popen DUDE!\033[0m"

hash git >/dev/null && /usr/bin/env git clone https://github.com/guilhermeandrade/popen.git ~/.popen || {
  echo "git not installed"
  exit
}

echo "\033[0;34mMaking some fucking configurations, maybe I'll need some fucking sudoers permission to accomplish this.\033[0m"

sudo mv ~/.popen/popen /usr/bin/popen

echo "\033[0;34mClearing all the fucking mess\033[0m"

echo "\033[0;34mContratulations!!! popen was installed!!!\033[0m"

rm -rf ~/.popen