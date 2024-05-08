FROM node:18.14.2
RUN npm install -g npm@9.5.0
RUN npm install -g firebase-tools@12.4.7

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]