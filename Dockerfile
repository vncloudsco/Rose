FROM python:3.9.7
WORKDIR /bot/tele
ADD . /bot/tele
RUN apt-get -y update && pip3 install -r requirements.txt
RUN chmod 777 /bot/tele/start.sh
ENTRYPOINT [ "/bot/tele/start.sh"]
EXPOSE 5000
CMD ["start.sh"]