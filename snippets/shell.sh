# MAC 删除 .DS_Store 文件
find ./ -name ".DS_Store" -depth -exec rm {} \;

# mac 微信防撤回 (慎用，不太稳定)
sudo rm -r -f WeChatExtension-ForMac && git clone --depth=1 https://github.com/MustangYM/WeChatExtension-ForMac && cd WeChatExtension-ForMac/WeChatExtension/Rely && ./Install.sh

# 修改 homebrew 镜像
cd /usr/local && git remote set-url origin git://mirrors.ustc.edu.cn/brew.git

# docker 删除 exited 镜像
docker rm  $(docker ps -a | grep Exited | awk '{print $1}')
