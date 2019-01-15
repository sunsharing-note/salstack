##### 如何安装salt
```
# 所有的minion连接到master的4505端口 4506收
1. 获取repo: wget http://mirrors.aliyun.com/repo/epel-7.repo
2.安装：yum -y install salt-master salt-minion
3.启动：systemctl enable salt-master
systemctl start salt-master # 4505 4506 端口  zeromq
vim /etc/salt/minion # id可改
master: {masterIP}
systemctl start salt-minion
systemctl enable salt-minion
4.认证：
cat /etc/salt/minion_id # 查看id
tree /etc/salt
cat pki/master/minions_pre/ansible-k8s3 #存放公钥
salt-key #列出所有keys
5.测试 salt "*" test.ping   salt "*" cmd.run "ss -tnl"

修改id后需要重新认证
1. 停止minion
2. salt-key删除之前的那个minion
3、删除pki目录
4、删除minion_id
5、重启
```

