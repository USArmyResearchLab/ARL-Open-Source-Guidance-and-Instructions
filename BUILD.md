BUILD
===
Information on requirements to build and produce the various outputs supported

[![Build Status](https://travis-ci.org/enckse/ARL-Open-Source-Guidance-and-Instructions.svg?branch=travisci)](https://travis-ci.org/enckse/ARL-Open-Source-Guidance-and-Instructions)

# requirements

## arch

make sure texlive is installed and pandoc
```
sudo pacman -S texlive-core texlive-most pandoc
```

required texlive aur packages
* install the AUR package for [acrotex](https://aur.archlinux.org/packages/texlive-acrotex/) to get eforms
* install the AUR package for [conv-xkv](https://aur.archlinux.org/packages/texlive-conv-xkv/) to get conv-xkv

# producing outputs

## artifacts

artifacts will be dumped into a `bin` folder when running any of the build commands

## build

to produce all output documents
```
make
```

to only produce the consumable PDF form
```
make pdf
```

to only produce the markdown
```
make md
```
