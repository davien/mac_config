# Mac iterm2 config

mac 安装 iterm2 oh-mh-zsh powerlevel10k theme终端配置

## 安装 iterm2

https://www.iterm2.com/downloads.html

## 安装 Homebrew

https://brew.sh/

## 安装或者升级你的 zsh 版本

```
brew install zsh
```

## 安装 oh-my-zsh

https://github.com/robbyrussell/oh-my-zsh
****
GitHub:
```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```
Gitee ( 国内镜像 )
```
sh -c "$(curl -fsSL https://gitee.com/mirrors/oh-my-zsh/raw/master/tools/install.sh)"

```

## 设置预设Shell
```
chsh -s $(which zsh)
```

## 安装字体 (install nerd-font)

https://github.com/ryanoasis/nerd-fonts

```
brew tap homebrew/cask-fonts
brew install --cask font-hack-nerd-font
```

Iterm2 里配置非 acsii 字体，否则对于 powerlevel10k 主题的特殊字体会显示不出来。

(Iterm2 -> Preferences -> Profiles -> Text -> Non-Ascii-Font 选择 nerd-font and restart Iterm2), 之后重启 Iterm2 生效


## 安装 iterm2 theme

我个人喜欢[吸血鬼主题](https://draculatheme.com/iterm/)

Term2 > Preferences > Profiles > Colors Tab -> Dracula.itermcolors file


## 安装 zplug 插件管理器

```
# https://github.com/zplug/zplug
curl -sL --proto-redir -all,https https://raw.githubusercontent.com/zplug/installer/master/installer.zsh | zsh
```

## 复制 zshrc 文件(zshrc 包含插件和主题)

我的配置文件[我的配置文件](https://github.com/davien/mac_config)

```
# 复制我的 zshrc 文件，你可以删除相应的 fzf, thefuck，autojump 配置，brew install 相应的命令行工具
# you may brew install thefuck, fzf
cp mac_zshrc  ~/.zshrc
source ~/.zshrc
# 你自己的 shell 配置可以写到 ~/.env.sh，检测有这个文件会自动 source
```

## 安装命令行工具

```
brew install fzf
brew install thefuck
brew install zoxide
brew install tree
```
#### zoxide

zoxide 跳转插件，通过你的访问记录快速跳转到对应的目录，为什么不使用autojump和z 是因为zoxide可以配合fzf使用，当有多个选择时可以使用 zi 进行可视化选择.

安装
```
brew install zoxide
```

配置
```
## ~/.zshrc
eval "$(zoxide init zsh)"
```

使用
```
## 匹配历史记录直接跳转
z zkj
## 如果安装了fzf，zi在有多个选择时就会出现可视化选择框让你选择，如果只有一个则会直接跳转
zi zkj
```
