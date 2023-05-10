FROM frappe/erpnext:v14.23.4
ARG FRAPPE_TOKEN
ENV FRAPPE_TOKEN=$FRAPPE_TOKEN
WORKDIR /home/frappe/frappe-bench
RUN git clone https://khushalmer03:${FRAPPE_TOKEN}@github.com/khushalmer03/demo 
RUN unset FRAPPE_TOKEN