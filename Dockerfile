FROM openjdk:21

#exposer le port
EXPOSE 9000

#Repertoire de travail dans le conteneur pour stocker le jar
WORKDIR /app

#Copie du fichier JAR récupéré de l'artefact de GitHub Actions dans le conteneur
COPY package.jar /app/package.jar

# Commande pour executer le fichier jar
 CMD ["java", "-jar", "package.jar"]