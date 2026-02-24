FROM adguard/adguardhome:latest as base

EXPOSE 80 443/tcp 443/udp 853/tcp 853/udp

RUN mkdir -p /opt/adguardhome/conf && \
    mkdir -p /opt/adguardhome/work && \
    mkdir -p /certificate

# COPY certificate /certificate

COPY AdGuardHome.yaml /opt/adguardhome/conf/AdGuardHome.yaml
