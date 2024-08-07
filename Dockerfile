FROM nginx:latest

COPY ./test.txt /test.txt

ENTRYPOINT [ "/bin/bash" ]
