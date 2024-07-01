#!/bin/bash
set -e

output=$(aws s3 --endpoint-url=https://storage.yandexcloud.net sync s3://src s3://dst)

jq -n --arg output "$output" '{statusCode:200, body:{request:$output}}'
