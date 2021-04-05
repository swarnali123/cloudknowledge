FROM centos: latest
MAINTAINER badal_m190372ca@nitc.ac.in

# Install bash
RUN apk add --no-cache bash-doc bash-completion curl

# Copy the script
COPY hub-purge/hub-purge.sh /hub-purge.sh

# Set /hub-purge.sh as entrypoint
ENTRYPOINT [ "/hub-purge.sh" ]
