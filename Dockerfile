FROM python:2


RUN git clone https://github.com/dragnet-org/dragnet.git /home/dragnet/
WORKDIR /home/dragnet
RUN pip install -r requirements.txt
RUN make install
RUN pip install scrapy pymongo

ADD . /home/sustainability