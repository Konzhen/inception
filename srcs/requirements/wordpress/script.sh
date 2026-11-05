sleep 10

mkdir -p /run/php

wp-cli.phar config create	--allow-root \
			--dbname=$SQL_DATABASE \
			--dbuser=$SQL_USER \
			--dbpass=$SQL_ROOT_PASSWORD \
			--dbhost=mariadb:3306 --path='/var/www/wordpress'

wp-cli.phar core install 	--allow-root \
			--url=$DOMAIN_NAME \
			--title=$SQL_USER \
			--admin_user=$SQL_USER \
			--admin_password=$SQL_ROOT_PASSWORD \
			--admin_email=$ADMIN_EMAIL \
			--path='var/www/wordpress'

wp-cli.phar user create		--allow-root \
			MichelDutronc Michel.Dutronc@saucissedestrasbourg.com \
			--user_pass=$SQL_ROOT_PASSWORD \
			--path='/var/www/wordpress'

/usr/sbin/php-fpm7.4 -F
