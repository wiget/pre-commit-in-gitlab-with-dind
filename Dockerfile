FROM docker:git

RUN apk add --no-cache python3 \
    && python3 -m ensurepip \
    && python3 -m pip install pre-commit
COPY script.sh /usr/local/bin/script.sh

CMD /usr/local/bin/script.sh
