#!/bin/bash

# start wait-for-it in the background.
# it waits until the pubsub emulator has started and it's listening to port 8085,
# then runs the pubsub-init.sh script to create topics and subscriptions using the REST API.
(/wait-for-it.sh localhost:8085 --strict --quiet -- /pubsub-init.sh) &

# start the PubSub emulator in the foreground.
gcloud beta emulators pubsub start --project="$PUBSUB_PROJECT_ID" --host-port=0.0.0.0:8085
