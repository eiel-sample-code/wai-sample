FROM eiel/haskell-stack:lts-3.11-warp
MAINTAINER Tomohiko Himura <eiel.hal@gmail.com>

ENV PORT 3000

COPY . /build
RUN cd build && stack install

RUN mkdir /app \
  && mkdir /app/user \
  && cp `stack path --local-bin-path`/wai-sample /app/

CMD wai-sample
