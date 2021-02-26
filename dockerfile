FROM alpine:edge

LABEL authors="dedtom@gmail.com"
LABEL version="0.1.0"
LABEL repository="https://github.com/tomasdedic/yq-action"
LABEL homepage="https://github.com/tomasdedic/yq-action"

LABEL com.github.actions.name="YQ Script"
LABEL com.github.actions.description="YQ by mikefarah as github action"
LABEL com.github.actions.icon="zap-off"
LABEL com.github.actions.color="red"

RUN apk --update --no-cache add jq bash curl yq

ADD entrypoint.sh /entrypoint.sh
RUN chmod a+x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
