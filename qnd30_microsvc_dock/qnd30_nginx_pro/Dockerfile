FROM nginx:1.23.0-alpine

COPY ./nginx/* /etc/nginx/
COPY ./nginx/run.sh /run.sh
COPY ./juansilvaphoto.com/* /etc/letsencrypt/live/juansilvaphoto.com

ENV LISTEN_PORT=80
ENV NGINX_PROXY=http://qnd30_app:9000
ENV APP_HOST=qnd30_app
ENV APP_PORT=9000

USER root

RUN apk add --no-cache openssl bash
RUN chmod +x /run.sh

RUN mkdir -p /qnd3.0_app/qnd30_app/staticfiles && \
    chmod 755 /qnd3.0_app/qnd30_app/staticfiles && \
    mkdir -p /qnd3.0_app/qnd30_app/mediafiles && \
    chmod 755 /qnd3.0_app/qnd30_app/mediafiles && \
    mkdir -p /qnd3.0_app/qnd30_app/media && \
    chmod 755 /qnd3.0_app/qnd30_app/media 

VOLUME /qnd3.0_app/qnd30_app/staticfiles
VOLUME /qnd3.0_app/qnd30_app/mediafiles
VOLUME /vol/www
VOLUME /vol/proxy
VOLUME /etc/letsencrypt

CMD ["/run.sh"]