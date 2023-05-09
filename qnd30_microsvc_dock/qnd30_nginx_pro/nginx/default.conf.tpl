server {
    listen 80;
    server_name ${DOMAIN} www.${DOMAIN} 138.197.8.253 127.0.0.1;

    location /.well-known/acme-challenge/ {
        root /vol/www/;
    }

    location /static {
    alias /qnd3.0_app/qnd30_app/staticfiles;
    client_max_body_size    1000M;
     }

    location /media {
    alias  /qnd3.0_app/qnd30_app/media;
    client_max_body_size    1000M;
     }

    location / {
        return 301 https://$host$request_uri;
    }
}

