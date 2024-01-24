FROM alpine
RUN apk update
RUN apk add --no-cache clang17-dev clang17-headers clang17-libclang clang17-libs clang17-static build-base cmake boost-dev make
# Build Dependencies beyond the standard library and boost go here as "run" commands
WORKDIR /src/
COPY src/* ./
RUN make
ENTRYPOINT ./main