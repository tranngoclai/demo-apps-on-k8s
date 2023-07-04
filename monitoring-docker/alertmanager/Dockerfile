FROM prom/alertmanager:v0.23.0
ARG MATTERMOST_HOST
ARG MATTERMOST_PORT
ARG TOKEN

COPY alertmanager.yml /home/alertmanager.yml
RUN sed -i \
    -e "s|<<mattermost_host>>|$MATTERMOST_HOST|g" \
    -e "s|<<mattermost_port>>|$MATTERMOST_PORT|g" \
    -e "s|<<token>>|$TOKEN|g" \
    /home/alertmanager.yml
