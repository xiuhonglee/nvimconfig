## configs


> my neovim configs

![screeshot](https://gw.alicdn.com/tfs/TB1vEiYLEY1gK0jSZFMXXaWcVXa-2876-1746.png)


### Attention

1. install plugin

```shell
:PlugInstall
```

2. upgrade pynvim 

```shell
$ python3 -m pip install --user --upgrade pynvim 
```

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

