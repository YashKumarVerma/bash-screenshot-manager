# Screenshot Manager

It's COVID ! and organizations have started online sessions, there would be (millions and millions) of instances when you would want to quickly take a screenshot for later reference. If (like me) you also face difficulty in referring to the old screenshots from a list of 300-400 photos, then this script is for you.

This would automatically categorize and arrange your screenshots based on time and topic.

## Installation

- Download / copy the contents `screenshot-manager.sh` to your screenshots directory.
- Run `chmod +x screenshot-manager.sh` to grant execution permissions
- Done.

## Usage

**make sure that the script is located in your screenshots folder**

```bash
# after attending data structures and algorithms class, run this
./screenshot-manager.sh dsa

# after attending data structures and algorithms lab, run this
./screenshot-manager.sh dsa --lab
```

## Attention

- the code that you enter as a parameter depicts your subject code. Try keeping it short,for example: DBMS, OS, DSA etc.
- Since screenshots are bundled based on course names, entering same long names would become difficult and boring (and useless as well).
- If not specified, the class is assumed to be a theory class, for lab classes, specify a `--lab` flag
- Clean up the screenshot directory before using this command, else all those would be moved to the subject screenshots.

## Contributing

Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

## License

[MIT](https://choosealicense.com/licenses/mit/)

## Author

- **Yash Kumar Verma**

  - LinkedIn: [yash-kumar-verma](https://www.linkedin.com/in/yash-kumar-verma/)
  - Stackoverflow: [yash-kumar-verma](https://stackoverflow.com/users/5131640/yash-kumar-verma?tab=profile)
  - ![Twitter Follow](https://img.shields.io/twitter/follow/yash_kr_verma?style=social)
