FROM frappe/erpnext:latest

ENV GIT_USER=khushalmer03

ENV GIT_TOKEN=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

WORKDIR /home/frappe/frappe-bench

RUN bench get-app --branch version-14 hrms

RUN bench get-app --branch version-14 payments

RUN bench get-app https://khushalmer03:$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@github.com/Improwised/apricot-3.git
