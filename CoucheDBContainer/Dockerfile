#unix:///var/run/docker.soc Use the official CouchDB image from Docker Hub
FROM couchdb:latest

# Copy over our custom config file
COPY local.ini /opt/couchdb/etc/local.ini

# Expose the CouchDB port
EXPOSE 5984

#Start the CouchDB server
