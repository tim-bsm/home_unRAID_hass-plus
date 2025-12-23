# Get the latest Home Assistant image
FROM ghcr.io/home-assistant/home-assistant:stable

# Install additional packages
RUN apk add --no-cache \
    # Install samba and related tools to shutdown PCs remotely via WOL with 'net rpc shutdown'
    # https://github.com/homebridge/docker-homebridge/issues/78#issuecomment-370945450
    samba \
    samba-common-tools
