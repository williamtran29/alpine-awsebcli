FROM alpine:3.6
RUN apk -v --update add \
        python-dev \
        py-pip \
        groff \
        less \
        mailcap \
        && \
    pip install --upgrade awscli awsebcli s3cmd python-magic && \
    apk -v --purge del py-pip && \
    rm /var/cache/apk/*
