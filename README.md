### 这里是archlinux的zzy-ac源

* 使用方法:
打开/etc/pacman.conf</br>在文末输入：
```bash
[zzy-ac]
SigLevel=Never
Server = https://github.com/zzy-ac/repo/releases/download/x86_64/
Server = https://gh.dmnb.cf/https://github.com/zzy-ac/repo/releases/download/x86_64/
```
保存文件</br>
打开终端</br>
输入

```bash
sudo pacman -Syu
```
回车输入密码</br>
完成更新
