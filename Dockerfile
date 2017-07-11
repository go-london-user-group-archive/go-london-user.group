FROM alpine

ENV HUGO_VERSION 0.25
ENV HUGO_BINARY hugo_${HUGO_VERSION}_Linux-64bit

ADD https://github.com/gohugoio/hugo/releases/download/v${HUGO_VERSION}/${HUGO_BINARY}.tar.gz /usr/local/

RUN ln -s /usr/local/hugo /usr/local/bin/hugo \
    & mkdir -p /usr/local/src/hugo/

WORKDIR /usr/local/src/hugo/

EXPOSE 1313

CMD ["hugo", "server", "--bind", "0.0.0.0"]