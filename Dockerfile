FROM openjdk:21

#exposer le port
EXPOSE 9000

#Repertoire de travail dans le conteneur pour stocker le jar
WORKDIR /app

#Copie du fichier JAR récupéré de l'artefact de GitHub Actions dans le conteneur
COPY EcoleMusique_API-0.0.1-SNAPSHOT.jar /app/EcoleMusique_API-0.0.1-SNAPSHOT.jar

# Commande pour executer le fichier jar
 CMD ["java", "-jar", "EcoleMusique_API-0.0.1-SNAPSHOT.jar"]