FROM #{FROM}

RUN apt-get update && apt-get install -y \
		autoconf \
		build-essential \
		i2c-tools \
		imagemagick \
		iputils-ping \
		ifupdown \
		less \
		libbz2-dev \
		libcurl4-openssl-dev \
		libevent-dev \
		libffi-dev \
		libglib2.0-dev \
		libjpeg-dev \
		libmagickcore-dev \
		libmagickwand-dev \
		libncurses-dev \
		libpq-dev \
		libraspberrypi-bin \
		libreadline-dev \
		libsqlite3-dev \
		libssl-dev \
		libxml2-dev \
		libxslt-dev \
		libyaml-dev \
		nano \
		net-tools \
		zlib1g-dev \
		usbutils \
		$( \
			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then \
				echo 'default-libmysqlclient-dev'; \
			else \
				echo 'libmysqlclient-dev'; \
			fi \
		) \
	&& rm -rf /var/lib/apt/lists/*