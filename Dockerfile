FROM frappe/erpnext:v14.23.4

ARG GIT_USER

ARG FRAPPE_TOKEN

WORKDIR /home/frappe/frappe-bench

RUN bench get-app --branch version-14 hrms

RUN bench get-app --branch version-14 payments

RUN bench get-app https://${GIT_USER}:${FRAPPE_TOKEN}@github.com/khushalmer03/demo 
