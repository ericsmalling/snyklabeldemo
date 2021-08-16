FROM alpine:latest

LABEL com.mycorp.blog.version=1.2.3

ENV MYNAME=Eric

# USER 65534

# COPY myname.sh myname.sh

ENTRYPOINT [ "/bin/sh" ]
CMD [ "-c", "echo Hello, my name is ${MYNAME} and I am running as: $(whoami)" ]

