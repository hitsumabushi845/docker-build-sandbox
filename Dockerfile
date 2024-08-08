# このコメントで壊れるだろう
FROM nginx:latest as nginx-stage

COPY ./test.txt /test.txt
RUN touch /test-file

FROM debian:bullseye-slim
COPY --from=nginx-stage /test-file /test-file
ENV TESTENV testenv

ENTRYPOINT [ "/bin/bash" ]
