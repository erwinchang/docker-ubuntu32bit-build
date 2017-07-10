FROM erwinchang/docker-ubuntu1404-32bit:20170703

# Install.
# rsync for web build
RUN apt-get update \
	&& DEBIAN_FRONTEND=noninteractive apt-get install -y vim.tiny wget sudo net-tools ca-certificates unzip apt-transport-https \
	&& DEBIAN_FRONTEND=noninteractive apt-get install -y make git curl \
	&& DEBIAN_FRONTEND=noninteractive apt-get install -y build-essential \
	&& rm -rf /var/lib/apt/lists/*

# Install UCI
ADD uci-lib.tgz /
RUN ldconfig

#add gitconfig file
ADD gitconfig /root/.gitconfig

#use bash
RUN rm /bin/sh && ln -s /bin/bash /bin/sh

# Set mount floder
RUN mkdir /root/workspace

# Set environment variables.
ENV HOME /root

# Define working directory.
WORKDIR /root

# Define default command.
CMD ["/bin/bash"]
