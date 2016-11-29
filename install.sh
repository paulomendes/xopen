if [  -e /usr/local/bin/xopen ]; then
	echo "\033[0;33mYou already have xopen installed. You already are a happy guy with a fantastic shor usefull script\033[0m"
	echo "\033[0;33mWe are justing updating your xopen\033[0m"
fi

echo "\033[0;34mGetting xopen DUDE!\033[0m"

if [ -d ~/.xopen ]; then
	rm -rf ~/.xopen
fi

hash git >/dev/null && /usr/bin/env git clone https://github.com/paulomendes/xopen.git ~/.xopen || {
  echo "git not installed"
  exit
}

# in case that the file was misplaced before
[ -f /usr/bin/xopen ] && sudo rm -f /usr/bin/xopen
echo "\033[0;34mAlmost There\033[0m"

mv ~/.xopen/xopen /usr/local/bin/xopen

echo "\033[0;34mClearing all the fucking mess\033[0m"

echo "\033[0;34mCongratulations!!! xopen was installed!!!\033[0m"
echo ""
echo ""
echo "\033[0;34m   _  ______  ____  _______   __\033[0m"
echo "\033[0;34m  | |/ / __ \/ __ \/ ____/ | / /\033[0m"
echo "\033[0;34m  |   / / / / /_/ / __/ /  |/ / \033[0m"
echo "\033[0;34m /   / /_/ / ____/ /___/ /|  /  \033[0m"
echo "\033[0;34m/_/|_\____/_/   /_____/_/ |_/   \033[0m"
echo ""
echo ""

rm -rf ~/.xopen
