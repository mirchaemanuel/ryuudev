#!/bin/sh
docker build -t ryuudev docker/phpdev

BINARY_DESTINATION="$HOME/bin"

rm -rf ~/bin/ryuudev && ln -s "$(pwd)/bin/ryuudev" "$BINARY_DESTINATION/ryuudev"
rm -rf ~/bin/php  && ln -s "$(pwd)/bin/php" "$BINARY_DESTINATION/php"
rm -rf ~/bin/composer  && ln -s "$(pwd)/bin/composer" "$BINARY_DESTINATION/composer"
