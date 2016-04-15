# Dotfiles

My dotfiles. Simple, clean, and not forked from anyone else's bulky repos. Mostly git aliases and utilities and a nice prompt. Used with pure bash, because it's the default on all unix machines.

### Installation

- Clone this repo down into whatever folder you store your projects in
- Make sure you have [hub](https://github.com/github/hub) installed, via `brew install hub`
- If you already have your own config files, you can back them up with `make backup`. This will rename them and put `.bak` at the end
- Run `make install`

### Updating

- Go back into this project
- Run `git pull`
- Run `reload`
- You're up to date

### Troubleshooting

If you get any errors, that's because some of the files it's trying to install are already present. I don't want to overwrite your existing config, so make sure you have backed up and saved what you've got there, then remove or rename the file and try installing again.

### Getting Used To It

There are a lot of shortcuts and aliases here. Once you get used to them, it will boost your productivity massively. Look over the aliases here, test em out, understand what they are doing and try using them. If you are not about it, just fork the repo and make your changes.

Make sure to also consult the docs for [hub](https://github.com/github/hub) as it adds a number of additional very useful shortcuts for git.
