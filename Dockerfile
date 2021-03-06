FROM alpine:3

ARG VERSION=v9.12.0

LABEL description "CyberChef ${VERSION}"

RUN apk --update --no-cache add busybox-extras tini 

WORKDIR /home

RUN wget https://github.com/gchq/CyberChef/releases/download/${VERSION}/CyberChef_${VERSION}.zip && \ 
    unzip CyberChef_${VERSION}.zip && \
    mv CyberChef_${VERSION}.html index.html && \
    rm CyberChef_${VERSION}.zip

EXPOSE 8080/tcp

ENTRYPOINT ["tini"]

CMD ["httpd","-f","-p","0.0.0.0:8080","-h","/home","-u","nobody","-v"]
