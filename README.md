# Ubuntu oh my zsh 安装脚本

> 适用于ubuntu18及以上版本

## 主要功能
- 安装 oh my zsh
- 安装 代码高亮与补全插件

## 执行方法

```shell
sh ./install-oh-my-zsh.sh
# 执行完成后接下来
sh ./install-oh-my-zsh-plugins.sh
# 最后执行
source ~/.zshrc
```

## 遇到source: not found错误

1. 执行ls -l /bin/sh命令，若得到结果/bin/sh -> dash，则说明Shell的解释器为dash。
2. 执行dpkg-reconfigure dash命令，然后选择no。
    > 重要 此步骤需要root权限。
3. 再次执行ls -l /bin/sh命令，若得到结果/bin/sh -> bash，则说明成功更改Shell的解释器为bash。