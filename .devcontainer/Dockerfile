FROM ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y \
	vim \
	lua5.1 \
    git \
    libcurl4-gnutls-dev \
    cmake \
    build-essential \
    luarocks

# Clean up
RUN apt-get autoremove -y \
    && apt-get clean -y \
    && rm -rf /var/lib/apt/lists/*

RUN luarocks install gumbo

RUN luarocks install luafilesystem

RUN luarocks install penlight

RUN luarocks install lua-curl CURL_INCDIR=/usr/include/x86_64-linux-gnu/ CURL_DIR=/usr/bin/

RUN luarocks install https://github.com/okpanic/lua-chrome/raw/master/lua-chrome-1.0-1.src.rock

RUN luarocks install https://github.com/okpanic/lua-spider/raw/master/lua-spider-1.0-1.src.rock

RUN luarocks install --server=https://luarocks.org/dev paths

#Switch back to dialog
ENV DEBIAN_FRONTEND=dialog
