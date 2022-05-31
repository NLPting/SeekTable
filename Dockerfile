From seektable/pivotdataservice:latest
RUN apt-get --allow-releaseinfo-change update
RUN apt-get --only-upgrade -y install libbsd0 libgnutls30 libidn2-0 liblz4-1 libx11-6 libx11-data curl libcurl4 libx11-xcb1


docker build -t pivotdataservice:1.0.0 .
docker tag seektable:1.0.0 tsmcting/seektable:1.0.0
docker push tsmcting/seektable:1.0.0
docker build -t pivotdataservice:1.0.0 .

docker tag pivotdataservice:1.0.0 tsmcting/pivotdataservice:1.0.0
docker push tsmcting/pivotdataservice:1.0.0

From seektable/pivotdataservice:latest
RUN apt-get --allow-releaseinfo-change update
RUN apt-get --only-upgrade -y install libbsd0 libgnutls30 libidn2-0 liblz4-1 libx11-6 libx11-data curl libcurl4 libx11-xcb1

From seektable/seektable:latest
RUN apt-get --only-upgrade -y install libgnutls30 libidn2-0 liblz4-1 curl
