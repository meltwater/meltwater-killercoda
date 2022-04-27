FROM busybox

ADD index.html /www/index.html

EXPOSE 8080

# Create a basic webserver and run it until the container is stopped 
CMD trap "exit 0;" TERM INT; httpd -p 8080 -h /www -f & wait
