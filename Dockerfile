 #BASEIMAGE
 FROM httpd

 #COPY THE index.html file to /usr/local/apache2/htdocs
 COPY index.html /usr/local/apache2/htdocs/

 #EXPOSE APACHEPORT
 EXPOSE 80

