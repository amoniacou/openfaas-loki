FROM --platform=${TARGETPLATFORM:-linux/amd64} gcr.io/distroless/static:nonroot

ARG TARGETPLATFORM
ARG TARGETPATH

COPY ${TARGETPATH} /

ENTRYPOINT ["/openfaas-loki"]