# Slackmojis

## Purpose

This repository contains a collection of popular emoji with instructions on
mass upload to a Slack workspace, whether you're a computer expert or not!

Current emoji include Blobs (`:blob-xxx:`), Shiblobs (`:shiblob-xxx:`), Party
everything (`:party-xxx:`), and much more! Each collection of emoji is located
in their own folder.

Please note that you must have the necessary privileges to upload emoji - see
the [Slack Help
Center](https://slack.com/intl/en-ca/help/articles/206870177-add-custom-emoji)
for more details.

## Tutorial

1. Clone or [download this
   repository](https://github.com/SeanPrashad/slackmojis/archive/master.zip) to
   your local machine. If you have downloaded the `.zip` file, unzip it using a
   third-party or built-in tool made for extracting archives.
1. Follow one of the options under [Uploading](#Uploading) below.

## Uploading

### Option 1: `slack-emoji-upload` command

If you're comfortable in a terminal, this is the recommended approach, as it
handles Slack's rate limit.

1. Install [slack-emoji-upload](https://github.com/sgreben/slack-emoji-upload)
1. Get an `xoxs-*` Slack token following
   [these instructions](https://github.com/jackellenberger/emojme#finding-a-slack-token).
   (The team/email/password approach has never worked for me, but token works great.)
1. Stick the token in a variable, to keep it out of your shell history:
```
$ read -s TOKEN
[paste token and hit enter]
```
1. Change to the directory you want to import emoji from
1. Import them like so, substituting the name of your slack workspace. The `xargs` works
   around an open-files bug I encountered, and the rate-limit (one every 4s or 15/minute)
   is just under Slack's reported 20-request-per-minute limit.
```
$ ls -1 | xargs -n 20 slack-emoji-upload -team YOUR_SLACK_TEAM -token $TOKEN -rate-limit 4s
```

### Option 2: Chrome extension

This is browser-based, but doesn't respect Slack's rate limit. Unfortunately it looks
like the author of the extension has stopped working on it, as there are rate-limiting
patches [available](https://github.com/Fauntleroy/neutral-face-emoji-tools/pull/15) for
months but unmerged.

1. Install [Neutral Face
Emoji Tools](https://chrome.google.com/webstore/detail/neutral-face-emoji-tools/anchoacphlfbdomdlomnbbfhcmcdmjej)
1. Go to the Emoji page of the correct Slack workspace
1. Drag your emoji, 10 or so at a time, into the box at the top of the emoji page.
1. Watch for HTTP errors which are almost certainly rate-limiting.

## Common Errors

- GIFs over 100 kb will result in a `too many frames` error - use
  [Ezgif.com](https://ezgif.com/resize) to scale down images over 100 kb
- Emoji which conflict with standard emoji names in other languages will
  result in a `error_bad_name_i18n` error

## Credits

All emoji were sourced from the following repositories/websites:

- Blob folder: https://blobs.gg
- Gopha folder: https://github.com/tenntenn/gopher-stickers
- Meow folder: https://blobs.gg
- Parrots folder: https://github.com/jmhobbs/cultofthepartyparrot.com
- Party folder: https://github.com/aendrew/party-everything
- Pokemon folder: https://github.com/SeanPrashad/slackmojis/tree/master/pokemon
- Scrabble folder: https://slackmojis.com
- Shiblob folder: https://blobs.gg
- Slackmoji.com folder: https://slackmojis.com
