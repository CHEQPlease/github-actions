#!/bin/bash
set -e

PROJECT_ID=$1
FIREBASE_TOKEN=$2

echo "setting firebase project to $PROJECT_ID"
firebase use --add "$PROJECT_ID" --token "$FIREBASE_TOKEN"

echo "deploying functions"
firebase deploy --only functions:retryOrder,functions:processCancelPayment --token "$FIREBASE_TOKEN"
