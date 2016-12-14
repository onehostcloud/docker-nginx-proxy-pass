FROM nginx:alpine

COPY conf.d/default.template /etc/nginx/conf.d/default.template
CMD /bin/bash -c "envsubst '\$PROXY_TARGET' < /etc/nginx/conf.d/default.template > /etc/nginx/conf.d/default.conf  && cat /etc/nginx/conf.d/default.conf && nginx -g 'daemon off;'"
