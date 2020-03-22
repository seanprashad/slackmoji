![S](./examples/l-s.jpg) ![L](./examples/l-l.jpg) ![A](./examples/l-a.jpg)
![C](./examples/l-c.jpg) ![K](./examples/l-k.jpg) ![M](./examples/l-m.jpg)
![O](./examples/l-o.jpg) ![J](./examples/l-j.jpg) ![I](./examples/l-i.jpg) ![S](./examples/l-s.jpg)

## Uploading Emoji

1. Clone or [download this
   repository](https://github.com/SeanPrashad/slackmojis/archive/master.zip) to
   your local machine. If you have downloaded the `.zip` file, unzip it using a
   third-party or built-in tool made for extracting archives.
1. Follow one of the options under [Uploading Options](#Uploading-Options) below.

### Uploading Options

#### Option 1: `slack-emoji-upload` command

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
1. From within your Slack workspace, click on the Workspace name and
   click `Customize Slack`. Your web browser should open a new tab directly to
   the `Customize Your Workspace` page.
1. Open finder or windows explorer, select up to 100 emoji and then drag and drop
   them into the Bulk Emoji Uploader section.
1. Wait a few minutes before uploading more emoji as Slack's
   rate-limiter will kick in.

## Common Errors

- GIFs over 100 kb will result in an upload error - use
  [Ezgif.com](https://ezgif.com/optimize) to scale down images over 100 kb
- Emoji which conflict with standard emoji names in other languages will
  result in a `error_bad_name_i18n` error

## Credits

All emoji were sourced from the following repositories/websites:

- Blob folder: https://blobs.gg
- Gopha folder: https://github.com/tenntenn/gopher-stickers
- Llama folder:  https://www.weibo.com/huiro, https://www.deviantart.com/jerikuto
- Meow folder: https://blobs.gg
- Parrots folder: https://github.com/jmhobbs/cultofthepartyparrot.com
- Party folder: https://github.com/aendrew/party-everything
- Pokemon folder: https://github.com/SeanPrashad/slackmojis/tree/master/pokemon
- Scrabble folder: https://slackmojis.com
- Shiblob folder: https://blobs.gg
- Slackmoji.com folder: https://slackmojis.com
