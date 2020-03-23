![S](examples/l-s.jpg) ![L](examples/l-l.jpg) ![A](examples/l-a.jpg)
![C](examples/l-c.jpg) ![K](examples/l-k.jpg) ![M](examples/l-m.jpg)
![O](examples/l-o.jpg) ![J](examples/l-j.jpg) ![I](examples/l-i.jpg)

## Collections

See below for previews from all categories!

### [Blob](emojis/blob/README.md)

![blob-100-gif.gif](emojis/blob/blob-100-gif.gif)![blob-amused.png](emojis/blob/blob-amused.png)![blob-avicii-gif.gif](emojis/blob/blob-avicii-gif.gif)

### [Blob-Sign](emojis/blob-sign/README.md)

![blob-sign-af.png](emojis/blob-sign/blob-sign-af.png)![blob-sign-aye.png](emojis/blob-sign/blob-sign-aye.png)![blob-sign-bai.png](emojis/blob-sign/blob-sign-bai.png)

### [Gopha](emojis/gopha/README.md)

![gopha-angry.png](emojis/gopha/gopha-angry.png)![gopha-autumn.png](emojis/gopha/gopha-autumn.png)![gopha-awake.png](emojis/gopha/gopha-awake.png)

### [Llama](emojis/llamas/README.md)

![llama-angry.gif](emojis/llamas/llama-angry.gif)![llama-awesome.gif](emojis/llamas/llama-awesome.gif)![llama-bleh.gif](emojis/llamas/llama-bleh.gif)

### [Meow](emojis/meow/README.md)

![meow-0w0.png](emojis/meow/meow-0w0.png)![meow-alien.png](emojis/meow/meow-alien.png)![meow-angry-intensifies-gif.gif](emojis/meow/meow-angry-intensifies-gif.gif)

### [Parrots](emojis/parrots/README.md)

![parrot-60-fps.gif](emojis/parrots/parrot-60-fps.gif)![parrot-abkhazia.gif](emojis/parrots/parrot-abkhazia.gif)![parrot-afghanistan.gif](emojis/parrots/parrot-afghanistan.gif)

### [Party](emojis/party/README.md)

![party-+1.png](emojis/party/party-+1.png)![party--1.png](emojis/party/party--1.png)![party-100.png](emojis/party/party-100.png)

### [Pokemon](emojis/pokemon/README.md)

![blob-pkmn-bellsprout.png](emojis/pokemon/blob-pkmn-bellsprout.png)![blob-pkmn-blastoise.png](emojis/pokemon/blob-pkmn-blastoise.png)![blob-pkmn-bulbasaur.png](emojis/pokemon/blob-pkmn-bulbasaur.png)

### [Scrabble](emojis/scrabble/README.md)

![l----a.jpg](emojis/scrabble/l----a.jpg)![l----b.jpg](emojis/scrabble/l----b.jpg)![l----c.jpg](emojis/scrabble/l----c.jpg)

### [Shiblob](emojis/scrabble/README.md)

![shiblob-ban.png](emojis/shiblob/shiblob-ban.png)![shiblob-cool.png](emojis/shiblob/shiblob-cool.png)![shiblob-evil.png](emojis/shiblob/shiblob-evil.png)

### [Slackmojis.com](emojis/slackmoji.com/README.md)

![bb8.png](emojis/slackmoji.com/bb8.png)![bb8flame.png](emojis/slackmoji.com/bb8flame.png)![beanstalk.png](emojis/slackmoji.com/beanstalk.png)

## Adding Emoji to Slack

1. Clone or [download this
   repository](https://github.com/SeanPrashad/slackmojis/archive/master.zip) to
   your local machine. If you have downloaded the `.zip` file, unzip it using a
   third-party or built-in tool made for extracting archives.
1. Follow one of the options below to begin uploading emoji:

<details>

<summary>Option 1: Respectful Emoji Tool extension</summary>

1. Open Chrome and browse to `chrome://extensions`
1. Click on the `Load unpacked` button and select the `extension` folder from
   within this repo
1. Navigate to `mySlackWorkspaceURL/customize/emoji`, where `mySlackWorkspaceURL` is the URL of your Slack workspace to begin uploading emoji

**Note**: 20 emoji will be uploaded per minute - be patient!

**Note**: This extension has been adapted from the [Neutral Face Emoji Tool](https://github.com/Fauntleroy/neutral-face-emoji-tools) and now lives
[here](https://github.com/SeanPrashad/respectful-emoji-tool#respectful-emoji-tool)!

</details>

<details>
<summary>Option 2: CLI</summary>

1.  Install [slack-emoji-upload](https://github.com/sgreben/slack-emoji-upload)
1.  Get an `xoxs-*` Slack token following
    [these instructions](https://github.com/jackellenberger/emojme#finding-a-slack-token).
    (The team/email/password approach has never worked for me, but token works great.)
1.  Stick the token in a variable, to keep it out of your shell history:

    ```
    $ read -s TOKEN
    [paste token and hit enter]
    ```

1.  Change to the directory you want to import emoji from
1.  Import them like so, substituting the name of your slack workspace. The `xargs` works
    around an open-files bug I encountered, and the rate-limit (one every 4s or 15/minute)
    is just under Slack's reported 20-request-per-minute limit.

    ```
    $ ls -1 | xargs -n 20 slack-emoji-upload -team YOUR_SLACK_TEAM -token $TOKEN -rate-limit 4s
    ```

</details>

## Contributing New Emoji

Contributions are always welcome! In your pull request, please make sure to do
the following:

1. Create a new folder with a name that reflects the theme of the emoji you are
   adding
1. Ensure each emoji is under 100 kb in size and of a `.png`, `.jpg`, or `.gif`
   format
1. Ensure that each emoji is prefixed with the theme plus a hyphen, ie.
   `gopha-xxx`; this will allow users in Slack to easily search for `gopha-` and
   view all emoji for that category
1. Run `node generate-readme.js` to generate a `README.md` containing all of the
   emojis in your new folder!

## Common Errors

- Gifs over 100 KB will result in an upload error - use
  [Ezgif.com](https://ezgif.com/optimize) to resize images under 100 KB
- Emoji which conflict with standard emoji names in other languages will
  result in a `error_bad_name_i18n` error

## Credits

All emoji were sourced from the following repositories/websites:

- Blob folder: https://blobs.gg
- Gopha folder: https://github.com/tenntenn/gopher-stickers
- Llama folder: https://www.weibo.com/huiro, https://www.deviantart.com/jerikuto
- Meow folder: https://blobs.gg
- Parrots folder: https://github.com/jmhobbs/cultofthepartyparrot.com
- Party folder: https://github.com/aendrew/party-everything
- Pokemon folder: https://github.com/SeanPrashad/slackmojis/tree/master/pokemon
- Scrabble folder: https://slackmojis.com
- Shiblob folder: https://blobs.gg
- Slackmoji.com folder: https://slackmojis.com
