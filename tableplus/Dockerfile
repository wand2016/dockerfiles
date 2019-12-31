FROM ubuntu:latest

RUN apt-get update && \
    apt-get install -y \
    wget \
    gnupg \
    software-properties-common

# Add TablePlus gpg key
RUN wget -O - -q http://deb.tableplus.com/apt.tableplus.com.gpg.key | apt-key add - 

# Add TablePlus repo
RUN add-apt-repository "deb [arch=amd64] https://deb.tableplus.com/debian tableplus main"

# Install
RUN apt-get update -y && \
    apt-get install -y tableplus

# shared object is required
RUN apt-get install -y libsecret-1-0

CMD tableplus
