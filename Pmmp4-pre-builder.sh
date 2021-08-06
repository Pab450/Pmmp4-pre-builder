#!/bin/sh
while getopts cdb option; do
    case $option in
        c)
        	if [ -z ${c+x} ]; then
        		c=true
        		find * ! -name $(basename -- $0) ! -name PocketMine-MP.phar -delete
        	fi
			;;
        d)
        	if [ -z ${d+x} ]; then
        		d=true
    			svn checkout https://github.com/pmmp/PocketMine-MP/branches/master/resources
    			svn checkout https://github.com/pmmp/PocketMine-MP/branches/master/src
    			svn export https://github.com/pmmp/PocketMine-MP/branches/master/composer.json
    			svn checkout https://github.com/pmmp/PocketMine-MP/branches/master/build
    			git clone https://github.com/pmmp/PocketMine-Language resources/locale
				git clone https://github.com/pmmp/BedrockData resources/vanilla
    			composer install --ignore-platform-reqs --no-dev
        	fi
        	;;
        b)
			if [ -z ${b+x} ]; then
        		b=true
        		php -dphar.readonly=0 build/server-phar.php
        	fi
			;;
    esac
done