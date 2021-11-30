## configs

> my neovim configs

![screeshot](https://gw.alicdn.com/tfs/TB1vEiYLEY1gK0jSZFMXXaWcVXa-2876-1746.png)

### Attention

1. install plugin

```shell
:PlugInstall
```

## Prepare

### 1. python

A lot of Nvim plugins are mainly written in Python. To use auto-completion and other features, we must install Python 3. The easiest way to install is via [pyenv](https://github.com/pyenv/pyenv)

```bash
$ python --version
Python 3.8.6
```

### 2. terminal font

I am using Hack font. Another great resource for programming font is the [nerd-font](https://github.com/ryanoasis/nerd-fonts) project

### Tips

#### 1. mardow-preview cannot open browsers

```shell
step1 > Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() } }
step2 > :call mkdp#util#install();
```

#### 2. switch Comments

```shell
1. comment:   <lead>cs
2. uncomment: <lead>cu
3. toggle comment style: <lead>ca
```

#### 3. upgrade ruby on macox

```shell
$ brew update
$ brew install ruby-build
$ brew install rbenv

$ rbenv install 3.0.0
$ rbenv global 3.0.0
```