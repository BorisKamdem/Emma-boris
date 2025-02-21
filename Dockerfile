FROM nginx
# ENV index /data/app
RUN mkdir -p $index
ADD https://github.com/BorisKamdem/Emma-boris/blob/emma/index.html $index
WORKDIR $index
EXPOSE 8080
CMD ["nginx"]