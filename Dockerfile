FROM improwised/erpnext:latest

COPY . /home/frappe/frappe-bench/apps/apricot3 

RUN sudo chown  frappe:frappe  /home/frappe/frappe-bench/apps/apricot3

WORKDIR /home/frappe/frappe-bench

CMD ["bench new-site erp.improwised.dev && bench --site erp.improwised.dev install-app apricot3 && bench start"]

