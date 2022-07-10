#For Angular App
FROM node:latest
ARG WORK_DIR=/frontend
ENV PATH ${WORK_DIR}/node_modules/.bin:$PATH

RUN mkdir ${WORK_DIR}
WORKDIR ${WORK_DIR}
COPY package.json ${WORK_DIR}
#COPY packge-lock.json ${WORK_DIR}

RUN npm install @angular/cli
RUN npm install

COPY . ${WORK_DIR}
EXPOSE 4200
CMD ng serve -o --host 0.0.0.0