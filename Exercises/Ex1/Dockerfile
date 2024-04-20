FROM alpine:3.19.1
RUN apk update && apk add --no-cache coreutils
RUN temp_dir=$(mktemp -d) && \
  echo -n "dummy text content"  > ${temp_dir}/file.txt && \
  sha256sum ${temp_dir}/file.txt |  cut -f1 -d ' '  > $HOME/secret.txt
CMD tail -f /dev/null