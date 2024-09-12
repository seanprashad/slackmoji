#!/usr/bin/env bash
# Usage: ./download.sh emoji.json

# Input File
INPUT="$1"

OUTPUT_DIR="downloaded_emoji"

# Create output directory where downloaded emoji will be stored
mkdir -p $OUTPUT_DIR;

# Sanitize the JSON for processing
# Break up the file into individual lines for processing (Comma and { to NewLine)
# Slack's emoji JSON brings an unwanted escape character "\". We need to remove it.
# We'll also remove unwanted quote marks `"` and curly braces "{"  "}"

RAW_LIST=$(cat "${INPUT}" | tr ",{" "\\n" | sed -E 's/[\\"{}]//g')

# Filter for custom emoji (ie: Anything on emoji.slack-edge.com), and remove the ":" separator
EMOJI_LIST=$(echo "${RAW_LIST}" | grep "https://emoji.slack-edge.com" | sed 's/:https/ https/')

# Process emoji.json and begin downloading all emoji
echo "${EMOJI_LIST}" |
while read -r line || [[ -n "$line" ]]; do
  # Remove the 'url: ' prefix included in the JSON
  url=${line#url: }

  # Base URL to split after
  url_prefix="https://"

  # Extract the remaining part of the URL after the base URL
  remaining_url=${url#"$url_prefix"}

  # Split the remaining URL by forward slashes
  IFS='/' read -r -a parts <<< "$remaining_url"
  
	name_part=${parts[2]}

  # Split part 3 (the filename) by the period
  filename="${parts[3]}"
  IFS='.' read -r -a file_parts <<< "$filename"

  extension_part=${file_parts[1]}

	echo "Downloading ${name_part}.${extension_part}"
	curl -o "${OUTPUT_DIR}/${name_part}.${extension_part}" "${url}"
done;