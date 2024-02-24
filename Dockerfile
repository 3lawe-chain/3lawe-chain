FROM jepthoniq/jepthon:slim-buster

#clonning repo 
RUN git clone https://github.com/3laweX/SaherAr.git /root/lady
#working directory 
WORKDIR /root/lady

# Install requirements
RUN curl -sL https://deb.nodesource.com/setup_16.x | bash -
RUN apt-get install -y nodejs
RUN npm i -g npm
RUN pip3 install --no-cache-dir -r requirements.txt

ENV PATH="/home/lady/bin:$PATH"

CMD ["python3","-m","lady"]