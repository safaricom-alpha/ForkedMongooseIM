#!/bin/bash

# Set environment variable values in mongooseim.cfg by replacing tags declared in mongooseim.cfg
CURR_DIR="$(dirname "$0")"

[[ $ROSALINE_PSWD ]] && sed -i -e "s/ROSALINE_PSWD/${ROSALINE_PSWD}/g" "${CURR_DIR}/mongooseim.cfg"
[[ $MPESA_PSWD ]] && sed -i -e "s/MPESA_PSWD/${MPESA_PSWD}/g" "${CURR_DIR}/mongooseim.cfg"
[[ $MYSQL_DB_HOST ]] && sed -i -e "s/MYSQL_DB_HOST/${MYSQL_DB_HOST}/g" "${CURR_DIR}/mongooseim.cfg"
[[ $MYSQL_DB_PORT ]] && sed -i -e "s/MYSQL_DB_PORT/${MYSQL_DB_PORT}/g" "${CURR_DIR}/mongooseim.cfg"
[[ $MYSQL_DB_NAME ]] && sed -i -e "s/MYSQL_DB_NAME/${MYSQL_DB_NAME}/g" "${CURR_DIR}/mongooseim.cfg"
[[ $MYSQL_DB_USERNAME ]] && sed -i -e "s/MYSQL_DB_USERNAME/${MYSQL_DB_USERNAME}/g" "${CURR_DIR}/mongooseim.cfg"
[[ $MYSQL_DB_PASSWORD ]] && sed -i -e "s/MYSQL_DB_PASSWORD/${MYSQL_DB_PASSWORD}/g" "${CURR_DIR}/mongooseim.cfg"
[[ $AUTH_HOST ]] && sed -i -e "s/AUTH_HOST/${AUTH_HOST}/g" "${CURR_DIR}/mongooseim.cfg"
[[ $AUTH_PASSWORD_FORMAT ]] && sed -i -e "s/AUTH_PASSWORD_FORMAT/${AUTH_PASSWORD_FORMAT}/g" "${CURR_DIR}/mongooseim.cfg"
[[ $MIM_LOG_LEVEL ]] && sed -i -e "s/MIM_LOG_LEVEL/${MIM_LOG_LEVEL}/g" "${CURR_DIR}/mongooseim.cfg"
[[ $MONGOOSE_PUSH_SERVER ]] && sed -i -e "s/MONGOOSE_PUSH_SERVER/${MONGOOSE_PUSH_SERVER}/g" "${CURR_DIR}/mongooseim.cfg"


echo "Done updating mongooseim.cfg configuration"
exit 0