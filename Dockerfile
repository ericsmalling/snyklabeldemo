FROM maven:3.6.2

LABEL com.mycorp.blog.version=1.2.3
LABEL org.opencontainers.image.source=https://github.com/ericsmalling/snyklabeldemo.git
#LABEL io.snyk.containers.image.dockerfile=/Dockerfile
LABEL com.mycorp.myteam.k8s.deployment="YXBpVmVyc2lvbjogYXBwcy92MQpraW5kOiBEZXBsb3ltZW50Cm1ldGFkYXRhOgogIGNyZWF0aW9uVGltZXN0YW1wOiBudWxsCiAgbGFiZWxzOgogICAgYXBwOiBzbnlrCiAgbmFtZTogc255awpzcGVjOgogIHJlcGxpY2FzOiAxCiAgc2VsZWN0b3I6CiAgICBtYXRjaExhYmVsczoKICAgICAgYXBwOiBzbnlrCiAgc3RyYXRlZ3k6IHt9CiAgdGVtcGxhdGU6CiAgICBtZXRhZGF0YToKICAgICAgY3JlYXRpb25UaW1lc3RhbXA6IG51bGwKICAgICAgbGFiZWxzOgogICAgICAgIGFwcDogc255awogICAgc3BlYzoKICAgICAgY29udGFpbmVyczoKICAgICAgLSBpbWFnZTogZXJpY3NtYWxsaW5nL3NueWtsYWJlbGRlbW86bQogICAgICAgIG5hbWU6IHNueWtsYWJlbGRlbW8KICAgICAgICByZXNvdXJjZXM6IHt9CnN0YXR1czoge30K"

ENV MYNAME=Eric

# USER 65534

# COPY myname.sh myname.sh

ENTRYPOINT [ "/bin/sh" ]
CMD [ "-c", "echo Hello, my name is ${MYNAME} and I am running as: $(whoami)" ]

