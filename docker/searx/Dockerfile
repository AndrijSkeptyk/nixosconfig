FROM searx/searx
#ENTRYPOINT ["/sbin/tini","--","/usr/local/searx/dockerfiles/docker-entrypoint.sh"]
EXPOSE 8080


WORKDIR /usr/local/searx


COPY myxpath.py ./searx/engines/myxpath.py
#COPY btdigg.py ./searx/engines/btdigg.py

#RUN /usr/bin/python3 -m compileall -q searx; \
#    touch -c --date=@${TIMESTAMP_SETTINGS} searx/settings.yml; \
#    touch -c --date=@${TIMESTAMP_UWSGI} dockerfiles/uwsgi.ini; \
#    if [ ! -z $VERSION_GITCOMMIT ]; then\
#      echo "VERSION_STRING = VERSION_STRING + \"-$VERSION_GITCOMMIT\"" >> /usr/local/searx/searx/version.py; \
#    fi; \
#    find /usr/local/searx/searx/static -a \( -name '*.html' -o -name '*.css' -o -name '*.js' \
#    -o -name '*.svg' -o -name '*.ttf' -o -name '*.eot' \) \
#    -type f -exec gzip -9 -k {} \+ -exec brotli --best {} \+


