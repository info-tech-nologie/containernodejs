# Utilisez une image de base Node.js
FROM node:14

# Définissez le répertoire de travail dans le conteneur
WORKDIR /app
# Copiez les fichiers nécessaires dans le conteneur
COPY package.json package.json
COPY index.js index.js
COPY package-lock.json package-lock.json
COPY server.js server.js
COPY db.json db.json

# Installez les dépendances
RUN npm install

# Exposez le port sur lequel l'application écoute
EXPOSE 3000

# Commande pour démarrer l'application
CMD ["node", "index.js"]
