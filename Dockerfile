FROM debian:stretch

RUN apt-get update && apt-get install -y ipcalc --no-install-recommends
RUN apt-get clean
RUN find /var/lib/apt/lists/ -type f -print0 | xargs -r0 rm -v
