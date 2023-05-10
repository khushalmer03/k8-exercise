# ARG FRAPPE_TOKEN
# FROM alpine:latest
# WORKDIR /app

# RUN export .. \ &&
#     git clone
ARG FRAPPE_TOKEN
FROM frappe/erpnext:v14.23.4
ENV FRAPPE_TOKEN=$FRAPPE_TOKEN
USER root
WORKDIR /home/frappe
RUN git clone https://khushalmer03:${FRAPPE_TOKEN}@github.com/khushalmer03/demo 
# COPY --from=stage 
# apt-get update && apt-get -y upgrade && apt-get install -y openssh-client && 
# RUN apt-get update && apt-get -y upgrade && apt-get install -y openssh-client 
# ARG GIT_AUTH_TOKEN
# COPY root-config /home/
# RUN sed 's|/home/runner|/home|g' -i.bak /home/.ssh/config
# ENV DEPLOY_PRIVATE_KEY ${secrets.DEPLOY_PRIVATE_KEY}
# RUN touch .ssh/id_rsa && chown frappe:frappe .ssh/id_rsa && chmod 600 .ssh/id_rsa
# RUN --mount=type=secret,id=DEPLOY_PRIVATE_KEY,target=/home/frappe/.ssh/id_rsa
# RUN cat .ssh/id_rsa
# RUN --mount=type=secret,id=DEPLOY_PRIVATE_KEY \
#     cat /run/secrets/DEPLOY_PRIVATE_KEY
# RUN echo ${DEPLOY_PRIVATE_KEY}
# RUN echo $DEPLOY_PRIVATE_KEY > .ssh/id_rsa
# RUN cat .ssh/id_rsa
# RUN eval $(ssh-agent -s) && ssh-add /home/frappe/.ssh/id_rsa




# COPY DEPLOY_PRIVATE_KEY /home/frappe/.ssh/id_rsa 
# RUN mkdir /home/.ssh && \
#     echo "StrictHostKeyChecking no " > /home/.ssh/config && \
#     chmod 400 /home/.ssh/config && \
#     ssh-keyscan github.com >> /home/.ssh/known_hosts && \
#     git config --global credential.helper 'store --file /home/.git-credentials' && \
#     echo "https://$GIT_AUTH_TOKEN:x-oauth-basic@github.com" > /home/.git-credentials
# RUN --mount=type=secret,id=DEPLOY_PRIVATE_KEY
# RUN export DEPLOY_PRIVATE_KEY=$(cat /run/secrets/DEPLOY_PRIVATE_KEY) && cat $DEPLOY_PRIVATE_KEY
# cat $DEPLOY_PRIVATE_KEY >> /home/frappe/.ssh/id_rsa 

# RUN mkdir -p -m 0600 /root/.ssh && ssh-keyscan github.com >> /root/.ssh/known_hosts

# RUN --mount=type=bind,id=DEPLOY_PRIVATE_KEY 
# RUN echo 
# COPY $DEPLOY_PRIVATE_KEY /home/.ssh/id_rsa  
# RUN cat /home/frappe/please

# RUN cat .ssh/id_rsa

# RUN chmod 600 /home/frappe/.ssh/id_rsa 


# USER frappe

# WORKDIR /home/frappe/frappe-bench

# RUN bench get-app --branch version-14 hrms

# RUN bench get-app --branch version-14 payments

# RUN bench get-app git@github.com:khushalmer03/demo.git 

# RUN bench get-app bench get-app --branch v13 https://github.com/Improwised/frappe_s3_attachment.git


# FROM frappe/erpnext:latest

# RUN bench get-app https://khushalmer03:${secrets.GIT_AUTH_TOKEN}@github.com/Improwised/apricot-3.git




# USER root
# RUN apt-get update && apt-get -y upgrade
# RUN apt-get install -y openssh-client
# RUN mkdir /home/frappe/.ssh
# COPY .ssh/id_rsa /home/frappe/.ssh/id_rsa
# RUN chmod 600 /home/frappe/.ssh/id_rsa
# RUN eval $(ssh-agent -s) && ssh-add /home/frappe/.ssh/id_rsa && \
#     ssh-keyscan github.com >> /home/frappe/.ssh/known_hosts
# chown frappe:frappe .ssh
# chown frappe:frappe id_rsa id_rsa.pub known_hosts

# USER frappe
# WORKDIR /home/frappe/frappe-bench
# RUN bench get-app git@github.com:Improwised/apricot-3.git
# WORKDIR /home/frappe/frappe-bench

# RUN bench get-app --branch version-14 hrms

# RUN bench get-app --branch version-14 payments

# ssh-keygen -t rsa -b 4096 -P "" -f my_key
# ssh-keygen -P "" -f /home/frappe/.ssh/id_rsa  


