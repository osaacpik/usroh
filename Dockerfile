FROM base/archlinux
ENV Site1=none Site2=none  PASS=none
RUN pacman -Syu --noconfirm && pacman -S openbsd-netcat bash unzip nano tor python2-gevent python2-msgpack python2-pyopenssl --noconfirm
ADD inits /inits
RUN chmod +x /inits
RUN mkdir -p /lonp && chmod g+ws /lonp
WORKDIR /lonp
#ENTRYPOINT ["/sbin/inits"]
#Expose ports
#ENTRYPOINT /entrypoint.sh
CMD /inits
# EXPOSE 41022 13943
EXPOSE 8080
