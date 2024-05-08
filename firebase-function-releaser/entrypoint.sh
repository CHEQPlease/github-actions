#!/bin/bash
set -e

PROJECT_ID=$1
FIREBASE_CREDENTIALS=$2

echo "${FIREBASE_CREDENTIALS}" > service-account.json
export GOOGLE_APPLICATION_CREDENTIALS="./service-account.json"

echo "deploying functions"
firebase deploy --only functions:retryOrder,functions:processCancelPayment