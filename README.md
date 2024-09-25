<img src="./logo.webp" align="left" width="144px" height="144px"/>

# koi

> `Comfort Shell Environment` base on [Oh My Fish][omf-link].

[![MIT License](https://img.shields.io/badge/license-MPL2.0-007EC7.svg?style=flat-square)](/LICENSE)
[![Fish Shell Version](https://img.shields.io/badge/fish-v3.0.2-007EC7.svg?style=flat-square)](https://fishshell.com)
[![Oh My Fish Framework](https://img.shields.io/badge/Oh%20My%20Fish-Framework-007EC7.svg?style=flat-square)](https://www.github.com/oh-my-fish/oh-my-fish)

## Install

If you not have omf, run it first:

```sh
curl -sfL https://gitee.com/andares/installers/raw/master/fish/install-omf | fish
# or
curl -L https://get.oh-my.fish | fish
```

```fish
omf install https://github.com/veeshan-io/koi
# or
omf install git@github.com:veeshan-io/koi
```

## Usage

```fish
koi
```

### Auto clear history

Enable:

```fish
koi set-rc autoclear_history 1
```

Disable:

```fish
koi delete-rc autoclear_history
# or
koi set-rc autoclear_history 0
```

## Features

---

[author]:         https://github.com/veeshan-io
[contributors]:   https://github.com/veeshan-io/koi/graphs/contributors
[omf-link]:       https://www.github.com/oh-my-fish/oh-my-fish
