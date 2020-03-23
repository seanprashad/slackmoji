const fs = require('fs');

const BANNED_FILENAMES = ['.DS_Store', 'README.md'];
const ROOT_FOLDER = 'emojis'

const notBlocked = (fileName) => {
  return !BANNED_FILENAMES.includes(fileName);
}

fs.readdir(ROOT_FOLDER, (err, themes) => {
    themes.filter(notBlocked).forEach(theme => {
        let contents = `# ${theme} Emojis\n\n`;
        const readme = `${ROOT_FOLDER}/${theme}/README.md`;
        const emoji = fs.readdirSync(`${ROOT_FOLDER}/${theme}`);

        emoji.filter(notBlocked).forEach(e => {
            contents += `![${e}](${e})`;
        });

        fs.writeFileSync(readme, contents, err => {
            if (err) {
                return console.error(err);
            }
        });
    });
});

