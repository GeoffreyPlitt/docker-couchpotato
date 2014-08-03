FROM ubuntu
RUN apt-get update
RUN apt-get install -y git-core
RUN git clone https://github.com/RuudBurger/CouchPotatoServer.git
RUN apt-get install -y --reinstall python2.7
ENTRYPOINT python CouchPotatoServer/CouchPotato.py
# Now running at http://localhost:5050
