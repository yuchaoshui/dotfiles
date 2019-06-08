# 初始化自己的dotfiles
```
~$ git init --bare $HOME/dotfiles
```

1、创建别名，在~/.bashrc里面添加如下内容，此时dotfiles相当于git命令。
```
alias dotfiles="/usr/bin/git --git-dir=$HOME/dotfiles --work-tree=$HOME"
```

2、使别名生效，配置不展示未跟踪文件
```
~$ source $HOME/.bashrc
~$ dotfiles config status.showUntrackedFiles no
```

3、将需要添加进dotfiles仓库的文件add并提交
```
~$ cd ~/
~$ dotfiles add .vimrc .config/i3/config
~$ dotfiles commit -m "Initial commit"
```

4、创建远程dotfiles仓库
```
~$ dotfiles remote add https://github.com/yuchaoshui/dotfiles.git
~$ dotfiles push origin master
```
<br>


# 安装

## 简单安装
简单安装表示只安装一次，后续对这些dotfiles的更改不会同步到远程仓库，简单使用rsync同步至`~/`目录。
只需执行`.install.sh`即可，注意：这会覆盖掉`~/`目录原有的同名文件。
```
~$ git clone https://github.com/yuchaoshui/dotfiles.git $HOME/dotfiles
~$ cd $HOME/dotfiles
~$ bash .install.sh
```
<br>

## 完整安装
完整安装表示后续需要对这些dotfiles文件继续修改，并且需要同步到远程仓库。
```
~$ git clone --bare https://github.com/yuchaoshui/dotfiles.git $HOME/dotfiles
```

1、创建临时别名，添加如下alias，此时dotfiles相当于git命令。
```
~$ alias dotfiles="/usr/bin/git --git-dir=$HOME/dotfiles --work-tree=$HOME"
```

2、配置不展示未跟踪文件。
```
~$ dotfiles config status.showUntrackedFiles no
~$ dotfiles status
```

4、根据需要reset、checkout指定的文件，这样文件就会自动恢复到$HOME下对应的目录了。
注意：这会覆盖掉`~/`目录原有的同名文件。
<br>
<br>
4.1、手动恢复指定文件
```
~$ dotfiles status

~$ dotfiles reset HEAD .vimrc
~$ dotfiles checkout -- .vimrc

~$ dotfiles reset HEAD .config/i3/config
~$ dotfiles checkout -- .config/i3/config
```

4.2、自动恢复全部文件
```
~$ cd ~/
~$ dotfiles reset HEAD .vimrc
~$ dotfiles checkout -- .restore.sh
~$ bash .restore.sh
```

5、使.bashrc文件生效
```
~$ source $HOME/.bashrc
```

6、最后查看已经恢复的文件列表。然后退出终端重新登录。
```
~$ dotfiles ls-files
```

