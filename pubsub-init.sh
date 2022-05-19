#!/bin/bash

topics_str="${PUBSUB_INIT_TOPICS:-example-topic}"

IFS=','
read -r -a topics <<< "$topics_str"

for topic in "${topics[@]}" ; do
  echo "create topic $topic ..."
  curl -s -X PUT "http://localhost:8085/v1/projects/$PUBSUB_PROJECT_ID/topics/$topic"
done
