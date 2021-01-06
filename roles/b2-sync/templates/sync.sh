#! /usr/bin/env bash
set -euo pipefail

while getopts l:b: opts; do
   case ${opts} in
      l) SYNC_LOCATION=${OPTARG} ;;
      b) B2_BUCKET_NAME=${OPTARG} ;;
   esac
done

RCLONE_REMOTE_NAME="b2"

if pgrep rclone > /dev/null; then
  echo "rclone is already running - aborting"
  exit 0
fi

rclone sync "${SYNC_LOCATION}" "${RCLONE_REMOTE_NAME}":"${B2_BUCKET_NAME}"
rclone cleanup "${RCLONE_REMOTE_NAME}":"${B2_BUCKET_NAME}"

echo $(date) > "{{ b2_sync_last_run_date_file_path }}"
