##### grains 古力 

* 存放着salt-minion启动时的资产信息

 ```
 salt '*' grains.items 
 salt '*' grains.ls 
 salt '*' grains.get saltversion 获取salt版本 
 salt '*' grains.get ip4_interfaces:ens33 获取ip
 salt '*' grains.get os 获取系统版本
 salt -G 'os:CentOS' cmd.run 'uptime' 在所有CentOS上执行
 自定义grains： cat /etc/salt/grains 需要重启minion
 test-granis: ansible-k8s3
 这种不需要重启：
 salt '*' saltutil.sync_grains
salt '*' grains.get test
 
 ```
* pillar 
 
 ```
 
 ```

