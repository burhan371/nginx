
FROM nginx:stable-alpine

RUN apk add --no-cache ca-certificates \
    && rm -f /etc/nginx/conf.d/default.conf

COPY load-balancer.conf /etc/nginx/conf.d/default.conf

RUN nginx -t

EXPOSE 8080

CMD ["nginx", "-g", "daemon off;"]
