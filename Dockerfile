FROM node

RUN mkdir /home/ec2-user/environment/

WORKDIR  /home/ec2-user/environment/node-proj/dockerProj-travisCi-Pipeline/

ENV PATH  /home/ec2-user/environment/app/node_module/.bin:$PATH

COPY .  package*.json ./home/ec2-user/environment/

RUN npm install

COPY . .

EXPOSE 4000

CMD [ "npm", "start"]