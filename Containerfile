FROM docker://docker.io/eclipsefdn/hugo-node:h0.144.2-n22.14.0

WORKDIR /opt

COPY . .

EXPOSE 1313

RUN ./run-hugo.sh
