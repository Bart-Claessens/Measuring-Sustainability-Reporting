FROM gitpod/workspace-mongodb
                    
USER gitpod
RUN git clone https://github.com/dragnet-org/dragnet.git /workspace/dragnet/
WORKDIR /workspace/dragnet
RUN pip install -r requirements.txt
RUN make install
RUN pip install scrapy pymongo

# Install custom tools, runtime, etc. using apt-get
# For example, the command below would install "bastet" - a command line tetris clone:
#
# RUN sudo apt-get -q update && #     sudo apt-get install -yq bastet && #     sudo rm -rf /var/lib/apt/lists/*
#
# More information: https://www.gitpod.io/docs/config-docker/
