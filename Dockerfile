FROM ubuntu
RUN apt-get update &&\
    apt-get install -y git 
RUN git clone https://github.com/vsergeev/luaradio.git
WORKDIR luaradio
CMD ./luaradio examples/rtlsdr_wbfm_mono.lua 91.1e6
