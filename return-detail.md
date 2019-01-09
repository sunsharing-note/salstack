```
ansible-k8s3:
                  total        used        free      shared  buff/cache   available
    Mem:           1984         113        1411           8         459        1691
    Swap:          4095           0        4095
[root@ansible-k8s1 salt]# salt "ansible-k8s3"  state.sls web.httpd
ansible-k8s3:   #### minion id
----------
          ID: httpd-install ####web/httpd.sls 中
    Function: pkg.installed
        Name: httpd
      Result: True     ####是否成功
     Comment: The following packages were installed/updated: httpd
     Started: 11:00:17.236982
    Duration: 47762.757 ms
     Changes:
              ----------
              apr:
                  ----------
                  new:
                      1.4.8-3.el7_4.1
                  old:
              apr-util:
                  ----------
                  new:
                      1.5.2-6.el7
                  old:
              httpd:
                  ----------
                  new:
                      2.4.6-88.el7.centos
                  old:
              httpd-tools:
                  ----------
                  new:
                      2.4.6-88.el7.centos
                  old:
              mailcap:
                  ----------
                  new:
                      2.1.41-2.el7
                  old:

```
