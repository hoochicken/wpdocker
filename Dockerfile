FROM wordpress
RUN docker-php-ext-install mysqli
RUN pecl install xdebug-2.9.2
RUN docker-php-ext-enable xdebug
RUN echo "xdebug.remote_enable=1" >> /usr/local/etc/php/php.ini
