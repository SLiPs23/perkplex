FROM nginx
RUN rm /etc/nginx/conf.d/default.conf
COPY PlexRedirect /usr/share/nginx/html/PlexRedirect
COPY perkplex /etc/nginx/conf.d/default.conf
COPY .htpasswd /etc/nginx/.htpasswd
EXPOSE 4080
