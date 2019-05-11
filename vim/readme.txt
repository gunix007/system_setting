1. Ubuntu解决vim不能自动回到文件上次编辑的位置问题
vim默认使用“~/.viminfo”（即当前用户家目录下的一个隐藏文件）来保存和记录每个用户的运行记录，如在vim内执行的历史命令、每个曾编辑过的文件上次退出时光标位置等，这些信息能让我们快速地回到上次退出vim前的状态。
然笔者发现自己的vim不能保存这些信息了，每次编辑文件时光标总是在左上角，不能回到上次编辑退出时的位置。
后来发现原因竟然时笔者的“~/.viminfo”文件所有者却是“root.root”，且其权限为仅所有者可读写，因此，vim退出时尝试去写这个文件必然失败。
解决方法
将“~/.viminfo”文件的所有这修改为当前用户，示例命令：
chown `id -u`:`id -g` ~/.viminfo

后记
后来笔者回想起来，可能时刚刚安装好vim后第一次运行vim时使用的时“sudo”权限，因此vim在第一次结束时创建该文件默认权限自然归属到root下。

2. Uncomment the following to have Vim jump to the last position when reopening a file in /etc/vim/vimrc
    "if has("autocmd")
    "  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
    "endif

