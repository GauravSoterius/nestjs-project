FROM node:16



# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY ./dist ./

RUN npm cache clean -f
# If you are building your code for production
# RUN npm install --only=production
RUN yarn install
# Bundle app source
RUN ls -a

EXPOSE 8080
CMD [ "npm", "start" ]

# This is dummy change for git demo