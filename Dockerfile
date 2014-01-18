FROM octohost/play

RUN mkdir /srv/www
ADD . /srv/www

WORKDIR /srv/www

RUN /usr/local/play/play dist && cd target/universal && unzip play-app*

EXPOSE 9000

CMD cd target/universal/play-app-1.0-SNAPSHOT && ./bin/play-app 