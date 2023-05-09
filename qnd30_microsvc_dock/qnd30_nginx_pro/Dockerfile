FROM nginx:1.23.0-alpine

COPY ./nginx/* /etc/nginx/
COPY ./nginx/run.sh /run.sh
COPY ./nginx/juansilvaphoto.com/* /etc/letsencrypt/live/juansilvaphoto.com/

ENV DOMAIN=juansilvaphoto.com
ENV LISTEN_PORT=80
ENV NGINX_PROXY=http://qnd30_app:9000
ENV APP_HOST=qnode12_app
ENV APP_PORT=9000

USER root

RUN apk add --no-cache openssl bash
RUN chmod +x /run.sh

RUN mkdir -p /qnd3.0_app_stg/qnd30_app_stg/staticfiles && \
    chmod 755 /qnd3.0_app_stg/qnd30_app_stg/staticfiles && \
    mkdir -p /qnd3.0_app_stg/qnd30_app_stg/mediafiles && \
    chmod 755 /qnd3.0_app_stg/qnd30_app_stg/mediafiles && \
    mkdir -p /qnd3.0_app_stg/qnd30_app_stgp/media && \
    chmod 755 /qnd3.0_app_stg/qnd30_app_stg/media 

VOLUME /qnd3.0_app_stg/qnd30_app_stg/staticfiles
VOLUME /qnd3.0_app_stg/qnd30_app_stg/mediafiles
VOLUME /vol/www
VOLUME /vol/proxy
VOLUME /etc/letsencrypt

CMD ["/run.sh"]