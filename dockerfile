#version: 0.0.1
FROM ubuntu:18.04
MAINTAINER jumpwin "jumpy@outlook.com"
ENV LANG C.UTF-8
ENV time  2020.12.12.01
RUN mkdir /frp
ADD frpc /frp/frpc
ADD frpc.ini /frp/frpc.ini
RUN chmod +x /frp/frpc
WORKDIR /frp
CMD ./frpc -c frpc.ini
