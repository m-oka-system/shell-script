#!/bin/bash

SCRIPT_DIR=$(dirname $0)
Region="$1"
Flag="$2"

if [ "$#" -ne 2 ]; then
  echo "第1引数にリージョン、第2引数にフラグを指定してください"
  exit 1
fi

if [[ "$Region" != "ap-northeast-1" && "$Region" != "ap-southeast-1" ]]; then
  echo "第1引数にはap-northeast-1,ap-southeast-1のいずれかを指定してください。"
  exit 1
fi

if [[ "$Flag" != "dr" && "$Flag" != "az" ]]; then
  echo "第1引数にはdr,azのいずれかを指定してください。"
  exit 1
fi

case "$Region" in
  ap-northeast-1)
    case "$Flag" in
      dr) mapfile -t SERVER_ARRAY < <(cat ${SCRIPT_DIR}/${Flag}/${Region}-${Flag}.csv) ;;
      az) mapfile -t SERVER_ARRAY < <(cat ${SCRIPT_DIR}/${Flag}/${Region}-${Flag}.csv) ;;
    esac
  ;;
  ap-southeast-1)
    case "$Flag" in
      dr) mapfile -t SERVER_ARRAY < <(cat ${SCRIPT_DIR}/${Flag}/${Region}-${Flag}.csv) ;;
      az) mapfile -t SERVER_ARRAY < <(cat ${SCRIPT_DIR}/${Flag}/${Region}-${Flag}.csv) ;;
    esac
  ;;
esac

for i in "${SERVER_ARRAY[@]}"; do
  echo $i
done
