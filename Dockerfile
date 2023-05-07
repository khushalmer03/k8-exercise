FROM improwised/erpnext:latest

WORKDIR /home/frappe/frappe-bench

RUN bench get-app --branch version-14 payments

RUN bench get-app --branch version-14 hrms

RUN bench get-app https://${GIT_USER}:${GIT_TOKEN}@github.com/Improwised/apricot-3.git
