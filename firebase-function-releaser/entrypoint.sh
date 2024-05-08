#!/bin/bash
set -e

PROJECT_ID=$1
echo "PROJECT_ID is: $PROJECT_ID"
pwd
ls -larth functions

firebase deploy --only functions:retryOrder,functions:processCancelPayment,functions:processCustomerSignature