FROM wordpress:php7.1-apache

RUN apt-get update && apt-get install -y sudo less

# Update user permissions
RUN chmod 777 -R /var/www \
	&& chown -R www-data:1000 /var/www \
  && usermod -u 1000 www-data \
  && chsh -s /bin/bash www-data

RUN curl -o /bin/wp-cli.phar https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
RUN chmod +x /bin/wp-cli.phar
RUN chown www-data /bin/wp-cli.phar

ADD conf/php.ini /usr/local/etc/php/php.ini
COPY users/* /var/www/
ADD conf/wordpress.conf /etc/apache2/sites-available/
RUN ln -s /etc/apache2/sites-available/wordpress.conf /etc/apache2/sites-enabled/wordpress.conf

# Cleanup
RUN apt-get clean
RUN rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
