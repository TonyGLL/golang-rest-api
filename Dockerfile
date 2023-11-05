FROM golang:1.21.3-alpine

WORKDIR /app

COPY go.mod go.sum ./
RUN go mod download

COPY . .

CMD [ "go", "run", "." ]

EXPOSE 3000