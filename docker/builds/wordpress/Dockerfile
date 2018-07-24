FROM wordpress:php7.1-apache

# Update user permissions
RUN chmod 777 -R /var/www \
	&& chown -R www-data:1000 /var/www \
  	&& usermod -u 1000 www-data \
  	&& chsh -s /bin/bash www-data

ADD conf/php.ini /usr/local/etc/php/php.ini
COPY users/* /var/www/
ADD conf/wordpress.conf /etc/apache2/sites-available/
RUN ln -s /etc/apache2/sites-available/wordpress.conf /etc/apache2/sites-enabled/wordpress.conf