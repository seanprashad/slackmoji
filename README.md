![S](examples/title/l-s.jpg) ![L](examples/title/l-l.jpg) ![A](examples/title/l-a.jpg)
![C](examples/title/l-c.jpg) ![K](examples/title/l-k.jpg) ![M](examples/title/l-m.jpg)
![O](examples/title/l-o.jpg) ![J](examples/title/l-j.jpg) ![I](examples/title/l-i.jpg)

## Collections

See below for previews from all categories!

### [Blob](emojis/blob/README.md)

![blob-catheart](examples/blob/blob-catheart.png)
![blob-love-gif](examples/blob/blob-love-gif.gif)
![blob-frog](examples/blob/blob-frog.png)
![blob-turtle-gif](examples/blob/blob-turtle-gif.gif)
![blob-wave-gif](examples/blob/blob-wave-gif.gif)

### [Blob-Sign](emojis/blob-sign/README.md)

![blob-sign-omg](examples/blob-sign/blob-sign-omg.png)
![blob-sign-lol](examples/blob-sign/blob-sign-lol.png)
![blob-sign-oof](examples/blob-sign/blob-sign-oof.png)
![blob-sign-brb](examples/blob-sign/blob-sign-brb.png)
![blob-sign-gg](examples/blob-sign/blob-sign-gg.png)

### [Gopha](emojis/gopha/README.md)

![gopha-ok](examples/gopha/gopha-ok.png)
![gopha-good-morning](examples/gopha/gopha-good-morning.png)
![gopha-work](examples/gopha/gopha-work.png)
![gopha-hide](examples/gopha/gopha-hide.png)
![gopha-lovely](examples/gopha/gopha-lovely.png)

### [Llama](emojis/llamas/README.md)

![llama-hi-gif](examples/llamas/llama-hi-gif.gif)
![llama-blush-gif](examples/llamas/llama-blush-gif.gif)
![llama-awesome-gif](examples/llamas/llama-awesome-gif.gif)
![llama-come-here-gif](examples/llamas/llama-come-here-gif.gif)
![llama-crying-gif](examples/llamas/llama-crying-gif.gif)

### [Meow](emojis/meow/README.md)

![meow-morning](examples/meow/meow-morning.png)
![meow-love](examples/meow/meow-love.png)
![meow-bread](examples/meow/meow-bread.png)
![meow-cookie](examples/meow/meow-cookie.png)
![meow-box](examples/meow/meow-box.png)

### [Parrots](emojis/parrots/README.md)

![parrot-angry](examples/parrots/parrot-angry.gif)
![parrot-beer](examples/parrots/parrot-beer.gif)
![parrot-bouncing](examples/parrots/parrot-bouncing.gif)
![parrot-coffee](examples/parrots/parrot-coffee.gif)
![parrot-cool](examples/parrots/parrot-cool.gif)

### [Party](emojis/party/README.md)

![party-100](examples/party/party-100.png)
![party-banana](examples/party/party-banana.png)
![party-cat](examples/party/party-cat.png)
![party-computer](examples/party/party-computer.png)
![party-wink](examples/party/party-wink.png)

### [Pokemon](emojis/pokemon/README.md)

![pkmn-pokeball](examples/pokemon/blob-pkmn-pokeball.png)
![pkmn-meowth](examples/pokemon/blob-pkmn-meowth.png)
![pkmn-pikachu](examples/pokemon/blob-pkmn-pikachu.png)
![pkmn-snorlax](examples/pokemon/blob-pkmn-snorlax.png)
![pkmn-wooloo](examples/pokemon/blob-pkmn-wooloo.gif)

### [Scrabble](emojis/scrabble/README.md)

![l-e](examples/scrabble/l-e.jpg)
![l-m](examples/scrabble/l-m.jpg)
![l-o](examples/scrabble/l-o.jpg)
![l-j](examples/scrabble/l-j.jpg)
![l-i](examples/scrabble/l-i.jpg)

### [Shiblob](emojis/scrabble/README.md)

![shiblob-peek](examples/shiblob/shiblob-peek.png)
![shiblob-photo](examples/shiblob/shiblob-photo.png)
![shiblob-reach](examples/shiblob/shiblob-reach.png)
![shiblob-nerd](examples/shiblob/shiblob-nerd.png)
![shiblob-melt](examples/shiblob/shiblob-melt.png)

### [Slackmojis.com](emojis/slackmoji.com/README.md)

![please-use-direct-message](examples/slackmoji.com/please-use-direct-message.gif)
![question](examples/slackmoji.com/question.gif)
![take-my-money](examples/slackmoji.com/take-my-money.png)
![umbreon](examples/slackmoji.com/umbreon.gif)
![yoshi](examples/slackmoji.com/yoshi.gif)

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
