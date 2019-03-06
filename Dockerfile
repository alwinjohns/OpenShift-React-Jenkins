FROM registry.access.redhat.com/rhoar-nodejs/nodejs-10
EXPOSE 3000
COPY . app/
RUN ls -la
WORKDIR app/
RUN ls -la
RUN npm install
CMD npm start
