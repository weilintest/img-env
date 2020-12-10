ARG FROM_IMAGE
FROM ${FROM_IMAGE}

LABEL org.opencontainers.image.source https://github.com/autocore-ats/img-env

# setup entrypoint
COPY ./ros_bridge_entrypoint.sh /

ENTRYPOINT ["/ros_bridge_entrypoint.sh"]
CMD ["bash"]