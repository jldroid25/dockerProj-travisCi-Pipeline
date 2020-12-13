FROM node

RUN mkdir /home/ec2-user/environment/app

WORKDIR  /home/ec2-user/environment/app

ENV PATH  /home/ec2-user/environment/app/node_module/.bin:$PATH

COPY .  package*.json ./home/ec2-user/environment/app

RUN npm install

COPY . .

EXPOSE 4000

CMD [ "npm", "start"]