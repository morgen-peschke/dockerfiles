FROM node:alpine
RUN npm install --global any-json
COPY wrapper.sh /wrapper.sh
ENTRYPOINT ["/wrapper.sh"]
