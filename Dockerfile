FROM alpine:3.8

EXPOSE 8280

COPY . /lncli-web

WORKDIR /lncli-web

RUN apk add --no-cache nodejs npm python make g++ && \
npm install \
&&  ./node_modules/.bin/gulp bundles

CMD ["/lncli-web/init.sh"]
