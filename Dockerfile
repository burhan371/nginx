
FROM nginx:stable-alpine

# Replace default NGINX configuration
RUN rm /etc/nginx/conf.d/default.conf

# Add custom load balancer configuration
COPY load-balancer.conf /etc/nginx/conf.d/default.conf

# Validate configuration during build
RUN nginx -t

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
