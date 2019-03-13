FROM zaherg/laravel-dusk:7.3

RUN apt-get update \
	&& apt-get install -yq --no-install-recommends libpng-dev \
	&& docker-php-ext-install bcmath gd \
	&& rm -rf /var/lib/apt/lists/*