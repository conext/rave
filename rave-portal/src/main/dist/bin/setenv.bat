set JAVA_OPTS=%JAVA_OPTS% -Xmx1024m -XX:MaxPermSize=256m -Dportal.override.properties="classpath:ci-portal.properties" -Drave-shindig.override.properties="classpath:ci-rave.shindig.properties" -Xdebug -agentlib:jdwp=transport=dt_socket,server=y,suspend=n,address=5012