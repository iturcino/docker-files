#!/bin/sh

if [ ! -f /.tomcat_admin_created ]; then
    /create_tomcat_admin_user.sh
fi

# Use faster (though more unsecure) random number generator
export CATALINA_OPTS="$CATALINA_OPTS -Djava.security.egd=file:/dev/./urandom"
${CATALINA_HOME}/bin/catalina.sh run