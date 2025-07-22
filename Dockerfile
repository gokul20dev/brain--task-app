
FROM nginx:alpine

# Copying prebuilt static files from the local dist/ folder
COPY dist/ /usr/share/nginx/html

EXPOSE 80

# Starting NGINX in foreground
CMD ["nginx", "-g", "daemon off;"]
