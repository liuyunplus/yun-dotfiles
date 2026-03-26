# yun-dev-config
#### 一、配置国内镜像源

```shell
# 1.配置国内镜像源
sudo cp /etc/apt/sources.list /etc/apt/sources.list_backup
# ubuntu20
wget https://raw.githubusercontent.com/liuyunplus/yun-dotfiles/main/ubuntu/sources-20.list -O /etc/apt/sources.list 
# ubuntu22
wget https://raw.githubusercontent.com/liuyunplus/yun-dotfiles/main/ubuntu/sources-22.list -O /etc/apt/sources.list

# 2.更新软件源
sudo apt-get update
sudo apt-get upgrade
# 如果没有公钥报错，则执行下条语句  
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys ${key}
```

#### 三、安装软件

```shell
sudo apt-get install git
sudo apt-get install curl
sudo apt-get install vim
sudo apt-get install neovim
sudo apt-get install fzf
sudo apt-get install nodejs
sudo apt-get install npm
sudo apt-get install python3-venv
```

#### 四、备选软件

```shell
# 安装C/C++的编译工具
sudo apt-get install build-essential
# 安装flameshot截图工具
sudo apt-get install flameshot
```

#### 四、设置英文目录

```shell
export LANG=en_US
xdg-user-dirs-gtk-update
export LANG=zh_CN
```

#### 五、配置github密钥

```shell
mkdir ~/.ssh; cd ~/.ssh  
ssh-keygen -m PEM -t rsa -b 4096 -N '' -C "liuyunplus@gmail.com" -f id_rsa_github  
cat ~/.ssh/id_rsa_github.pub
```

#### 六、安装Oh-My-Zsh

```shell
sudo apt install zsh
chsh -s /bin/zsh  
wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | sh
```

#### 七、执行后续安装

```shell
wget https://raw.githubusercontent.com/liuyun1995/yun-dev-config/master/init.sh -O - | sh
```
