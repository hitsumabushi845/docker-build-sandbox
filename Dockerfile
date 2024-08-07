FROM nginx:latest as nginx-stage

COPY ./test.txt /test.txt
RUN touch /test-file

FROM debian:bullseye-slim
COPY --from=nginx-stage /test-file /test-file

ENTRYPOINT [ "/bin/bash" ]
