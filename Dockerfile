FROM alpine

# Download and install hugo
ENV HUGO_VERSION 0.25
ENV HUGO_BINARY hugo_${HUGO_VERSION}_Linux-64bit

ADD https://github.com/gohugoio/hugo/releases/download/v${HUGO_VERSION}/${HUGO_BINARY}.tar.gz /usr/local/

RUN	ln -s /usr/local/hugo /usr/local/bin/hugo

# # Create working directory
RUN mkdir -p /usr/local/src/hugo
WORKDIR /usr/local/src/hugo

# # Automatically build site
ADD ./ /usr/local/src/hugo/
CMD ["hugo", "server", "--bind", "0.0.0.0"]

# # Expose default hugo port
EXPOSE 1313