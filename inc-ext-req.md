```
# include
cat lamp.sls
include:
  - apache.apache
  - php.php
  - mysql.mysql
cat top.sls
prod:
  'ansible3':
    - lamp
 # extend
[root@ansible2 prod]# cat lamp.sls # 扩展
include:
  - apache.apache
  - php.php
  - mysql.mysql

extend:
  php-install:
    pkg.installed:
      - name: php-mbstring
 # require     require_in被谁依赖
[root@ansible2 apache]# cat apache.sls
apache-install:
  pkg.installed:
    - name: httpd

apache-config:
  file.managed:
    - name: /etc/httpd/conf/httpd.conf
    - source: salt://apache/files/httpd.conf
    - user: root
    - group: root
    - mode: 644

apache-service:
  service.running:
    - name: httpd
    - enable: True
    - require:
      - file: apache-config
# watch
[root@ansible2 apache]# cat apache.sls
apache-install:
  pkg.installed:
    - name: httpd

apache-config:
  file.managed:
    - name: /etc/httpd/conf/httpd.conf
    - source: salt://apache/files/httpd.conf
    - user: root
    - group: root
    - mode: 644

apache-service:
  service.running:
    - name: httpd
    - enable: True
    - watch:
      - file: apache-config


```
