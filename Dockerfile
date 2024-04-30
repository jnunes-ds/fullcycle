FROM golang:latest
LABEL authors="junes-ds"

WORKDIR /usr/src/fullcycle

COPY ./GoProject /usr/src/fullcycle/GoProject

RUN echo "Building the project" \
    && go build ./GoProject/fullcycle.go \
    && rm -rf GoProject

CMD ["./fullcycle"]