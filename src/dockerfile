# Créer un Dockerfile qui va se base sur l'image nginx:alpine, et ajouter un COPY qui va
# copier le fichier index.html (qui doit être dans le même dossier que le Dockerfile) vers /usr/share/nginx/html/index.html
FROM nginx:alpine
COPY index.html /usr/share/nginx/html/index.html
# Exposer le port 80
EXPOSE 80
# Lancer nginx en mode foreground
CMD ["nginx", "-g", "daemon off;"]
# docker build -t mon-site .
# docker run -d -p 8081:80 mon-site
# http://localhost:8081
# docker stop <container_id>
# docker rm <container_id>
# docker rmi mon-site
# docker ps
# docker logs <container_id>
# docker exec -it <container_id> sh