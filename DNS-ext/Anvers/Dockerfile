FROM resystit/bind9

COPY named.conf /etc/bind/named.conf
COPY bedroom.ephec-ti.eu /etc/bind/bedroom.ephec-ti.eu

CMD ["named", "-c", "/etc/bind/named.conf", "-g", "-u", "named"]