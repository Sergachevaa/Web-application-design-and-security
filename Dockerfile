FROM ubuntu:20.04

RUN apt-get update && apt-get install -y bash

WORKDIR /app

COPY script.sh
COPY history_info.txt

RUN chmod +x script.sh

CMD ["/bin/bash", "-c", "/.script.sh && cat history_info.txt"]
