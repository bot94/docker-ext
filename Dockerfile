FROM docker:git

RUN apk update -q && apk add -q --no-progress py-pip bash curl curl-dev && rm -rf /var/cache/apk/*
RUN pip install -q docker-compose
RUN curl -L https://github.com/bot94/envsubst/releases/download/v1.0/envsubst_1.0_`uname -s`_`uname -m`.tar.gz \
    | tar xzf - > envsubst \
    && chmod +x envsubst \
    && mv envsubst /bin/envsubst

