FROM prom/prometheus
ARG MASTER_NODE_HOST
ARG MASTER_NODE_PORT
COPY prometheus.yml /etc/prometheus/prometheus.yml
RUN sed -i \
    -e "s|<<master_node_host>>|$MASTER_NODE_HOST|g" \
    -e "s|<<master_node_port>>|$MASTER_NODE_PORT|g" \
    /etc/prometheus/prometheus.yml
