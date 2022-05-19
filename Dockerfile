FROM gcr.io/google.com/cloudsdktool/cloud-sdk:385.0.0-emulators

COPY wait-for-it.sh /wait-for-it.sh
COPY run.sh /run.sh
COPY pubsub-init.sh /pubsub-init.sh

EXPOSE 8085

CMD /run.sh
