#Indique le building de java
FROM eclipse-temurin:21-jre-alpine  	

#Indique le repertoire qui va accueillir notre application dans notre image
WORKDIR /usr/src/app

# Dans notre dossier contenant notre code java, on va le build
# On ouvre sur VSCode, en bas a gauche, sur Mave, on va dans Lifecycle, dans package et on execute

# On copy ensuite le package
COPY target/backend-0.0.1-SNAPSHOT.jar .


# On demarre ensuite notre API
CMD ["java","-jar","backend-0.0.1-SNAPSHOT.jar"]