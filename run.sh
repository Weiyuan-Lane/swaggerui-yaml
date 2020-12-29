#!/bin/sh

NGINX_DIR="/usr/share/nginx/html"
BASE_DOCS_DIR_URL="/docs"

apis_str="var apis=[" 
for d in $NGINX_DIR$BASE_DOCS_DIR_URL/* ; do
  file=`basename "$d"`
  filename="${file%.*}"
  apis_str="$apis_str{url:\"$BASE_DOCS_DIR_URL/$file\", name:\"$filename\"},"
done
apis_str="$apis_str];"

sed -e "s|APIS_STRING_TEMP|$apis_str|g" /assets/index.html > $NGINX_DIR/index.html
find $NGINX_DIR -type f -regex ".*\.\(html\|js\|css\)" -exec sh -c "gzip < {} > {}.gz" \;

exec nginx -g 'daemon off;'
