FROM nginx

COPY ./default.conf /etc/nginx/conf.d/default.conf

# NOT FOUND response
COPY ./includes/backend-not-found.html /var/www/html/backend-not-found.html

# Proxy configurations
COPY ./includes/ /etc/nginx/includes/

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
