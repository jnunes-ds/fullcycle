FROM golang:1.21.8-alpine3.18 as golang
LABEL authors="junes-ds"

WORKDIR /usr/src/fullcycle

COPY ./GoProject /usr/src/fullcycle/GoProject

RUN go build ./GoProject/fullcycle.go \
    && rm -rf GoProject

FROM scratch

COPY --from=golang /usr/src/fullcycle .

CMD ["./fullcycle"]