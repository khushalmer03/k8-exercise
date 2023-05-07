FROM frappe/erpnext:latest

WORKDIR /home/frappe/frappe-bench

RUN bench get-app --branch version-14 payments

RUN bench get-app --branch version-14 hrms

RUN bench get-app https://khushalmer03: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@github.com/Improwised/apricot-3.git
