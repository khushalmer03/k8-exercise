FROM frappe/erpnext:latest

ENV GIT_USER=khushalmer03

ENV GIT_TOKEN=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

WORKDIR /home/frappe/frappe-bench

RUN bench get-app --branch version-14 hrms

RUN bench get-app --branch version-14 payments

RUN bench get-app https://${GIT_USER}:${GIT_TOKEN}@github.com/Improwised/apricot-3.git
