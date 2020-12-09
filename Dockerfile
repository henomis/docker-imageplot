# vim:set ft=dockerfile:
FROM alpine
MAINTAINER "Simone Vellei <henomis@gmail.com>"

RUN apk add --update gnuplot \
	imagemagick \ 
	bash \
	pngcrush \
	optipng \
        fontconfig \
        ttf-ubuntu-font-family \
        msttcorefonts-installer && \
    update-ms-fonts && \
    fc-cache -f && \
    rm -rf /var/cache/apk/*

