FROM node

RUN mkdir -p /home/ec2-user/environment/app/

WORKDIR  /home/ec2-user/environment/node-proj/dockerProj-travisCi-Pipeline/

ENV PATH  /home/ec2-user/environment/app/node_module/.bin:$PATH

COPY .  package*.json ./home/ec2-user/environment/app

RUN npm install

COPY . .

EXPOSE 4000

CMD [ "npm", "start"]