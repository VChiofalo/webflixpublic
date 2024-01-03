FROM node:20-slim

# Mise à jours de la base de l'image
# RUN apt update && apt upgrade -y

# RUN apt install -y zip curl wget
WORKDIR /home/webflix

COPY ./webflix .
# RUN git clone https://github.com/VChiofalo/webflixpublic /home/webflix

# WORKDIR /home/webflix

RUN npm i

EXPOSE 80

CMD ["npm", "start"]