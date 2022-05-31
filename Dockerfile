From seektable/pivotdataservice:latest
RUN apt-get --allow-releaseinfo-change update
RUN apt-get --only-upgrade -y install libbsd0 libgnutls30 libidn2-0 liblz4-1 libx11-6 libx11-data curl libcurl4 libx11-xcb1
