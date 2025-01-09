FROM nginx
MAINTAINER akash.s@addwebsolution.in
RUN apt update  && apt install  apache2 \
   zip \
   unzip \
   wget
RUN rm -rvf /usr/share/nginx/html/*
WORKDIR /usr/share/nginx/html
RUN wget https://www.free-css.com/assets/files/free-css-templates/download/page296/little-fashion.zip 
RUN unzip little-fashion.zip
RUN cp -rvf 2127_little_fashion/* .
RUN rm -rf little-fashion.zip 2127_little_fashion
RUN service apache2 start
RUN service apache2 start
EXPOSE 80
CMD ["npm", "start"]
