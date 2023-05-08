FROM frappe/erpnext:v14.23.4

USER root
WORKDIR /home/frappe
RUN apt-get update && apt-get -y upgrade && apt-get install -y openssh-client && mkdir /home/frappe/.ssh && chown frappe:frappe .ssh && chmod 777 /home/frappe/.ssh
# ARG GIT_AUTH_TOKEN
COPY root-config /home/
RUN sed 's|/home/runner|/root|g' -i.bak /home/root-config/.ssh/config
# ARG DEPLOY_PRIVATE_KEY
# COPY DEPLOY_PRIVATE_KEY /home/frappe/.ssh/id_rsa 
# RUN mkdir /home/.ssh && \
#     echo "StrictHostKeyChecking no " > /home/.ssh/config && \
#     chmod 400 /home/.ssh/config && \
#     ssh-keyscan github.com >> /home/.ssh/known_hosts && \
#     git config --global credential.helper 'store --file /home/.git-credentials' && \
#     echo "https://$GIT_AUTH_TOKEN:x-oauth-basic@github.com" > /home/.git-credentials
# RUN --mount=type=ssh,id=DEPLOY_PRIVATE_KEY 
#     export DEPLOY_PRIVATE_KEY=$(cat /run/secrets/DEPLOY_PRIVATE_KEY) && \
#     cat $DEPLOY_PRIVATE_KEY >> /home/frappe/.ssh/id_rsa 
RUN git clone git@github.com:khushalmer03/demo.git   

# RUN mkdir -p -m 0600 /root/.ssh && ssh-keyscan github.com >> /root/.ssh/known_hosts

# RUN --mount=type=bind,id=DEPLOY_PRIVATE_KEY 
# RUN echo 
# COPY $DEPLOY_PRIVATE_KEY /home/.ssh/id_rsa  
# RUN cat /home/frappe/please

# RUN cat .ssh/id_rsa

# RUN chmod 600 /home/frappe/.ssh/id_rsa 

# RUN eval $(ssh-agent -s) && ssh-add /home/frappe/.ssh/id_rsa
# RUN ssh-keyscan github.com >> /home/frappe/.ssh/known_hosts && chmod 644 /home/frappe/.ssh/known_hosts && chown frappe:frappe .ssh && chown frappe:frappe .ssh/id_rsa .ssh/known_hosts 

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


