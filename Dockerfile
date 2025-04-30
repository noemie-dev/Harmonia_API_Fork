# base de l'image : o utilise une image officielle du JDK21
# environnement necessaire pour executer l'application
FROM openjdk:21

#Expose le port 8082 (celui sur lequel l'application écoutera à l'intérieur du conteneur)
EXPOSE 8082

#Répertoire de travail dans le conteneur où sera placé le fichier JAR
#Toutes les instructions suivantes seront exécutées depuis ce dossier
WORKDIR /app

#Copie du fichier JAR dans le conteneur, (généré localement ou via GitHub Actions) dans le conteneur
# Il est placé dans le répertoire /app et conserve son nom
COPY EcoleMusique_API-0.0.1-SNAPSHOT.jar /app/EcoleMusique_API-0.0.1-SNAPSHOT.jar

# Commande pour executer le fichier jar et lancer l'applicaito Java à l'intérieur du conteneur
 CMD ["java", "-jar", "EcoleMusique_API-0.0.1-SNAPSHOT.jar"]