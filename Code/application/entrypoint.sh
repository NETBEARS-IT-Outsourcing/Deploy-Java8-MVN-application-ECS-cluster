#! /bin/sh

set -e

sed -e "s/DB_HOST/${DB_HOST}/g" \
    -e "s/DB_USERNAME/${DB_USERNAME}/g" \
    -e "s/DB_PASSWORD/${DB_PASSWORD}/g" \
    "${APP_PATH}/application.properties" > "${APP_PATH}/src/main/resources/application.properties"

rm  ${APP_PATH}/application.properties

mvn spring-boot:run -Dupload-dir=${APP_DATA}
