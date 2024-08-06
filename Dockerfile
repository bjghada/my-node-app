# Utilise l'image Node.js officielle
FROM node:14

# Crée un répertoire pour l'application
WORKDIR /usr/src/app

# Copie les fichiers package.json et package-lock.json
COPY package*.json ./

# Installe les dépendances
RUN npm install

# Copie le reste de l'application
COPY . .

# Expose le port utilisé par l'application
EXPOSE 3000

# Définit la commande pour démarrer l'application
CMD [ "node", "index.js" ]