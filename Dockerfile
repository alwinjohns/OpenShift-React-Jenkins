FROM registry.access.redhat.com/rhoar-nodejs/nodejs-10
EXPOSE 3000
USER root
COPY . app/
RUN ls -la
WORKDIR app/
RUN ls -la
RUN npm install
CMD npx react-scripts start
