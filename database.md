```
1.自定义grains 在/etc/salt/下创建grains文件，在其添加键值对，需要从其minion才生效 grains在minion上设置

2.当然，也可以不重启生效，salt '*' saltutil.sync_grains 然后 salt '*' grains.get hehe

3.pillar 可以给指定的minion指定数据 在master上设置
开启pillar 修改master文件的pillar_opts: True并重启master 获取数据有延迟

修改pillar_roots 并重启(一定要保证目录存在)

示例: pillar依赖top.sls
[root@ansible2 base]# cat apache.sls
{% if grains['os'] == 'CentOS' %}
apache: httpd
{% elif grains['os'] == 'Debian' %}
apache: apache2
{% endif %}

[root@ansible2 base]# cat top.sls
base:
  '*':
    - apache
    
应用：不用重启

grains与pillar的对比
        存储位置     类型   采集方式                  场景
grains   minion     静态     minino启动时，可刷新     获取信息 匹配

pillar    master     动态     指定 实时生效           匹配 敏感数据配置


```
