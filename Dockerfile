FROM frappe/erpnext:latest

ENV GIT_USER=khushalmer03

ENV GIT_AUTH_TOKEN=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
# USER root
# RUN apt-get update && apt-get -y upgrade
# RUN apt-get install -y openssh-client
# COPY .ssh/id_rsa /home/frappe/.ssh/id_rsa
# RUN chmod 600 /home/frappe/.ssh/id_rsa
# RUN eval $(ssh-agent -s) && ssh-add /home/frappe/.ssh/id_rsa && \
#     ssh-keyscan github.com >> /home/frappe/.ssh/known_hosts
# RUN bench get-app git@github.com:Improwised/apricot-3.git
# WORKDIR /home/frappe/frappe-bench

# RUN bench get-app --branch version-14 hrms

# RUN bench get-app --branch version-14 payments

RUN bench get-app https://${GIT_USER}:${GIT_AUTH_TOKEN}@github.com/Improwised/apricot-3.git
