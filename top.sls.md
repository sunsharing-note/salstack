```
base:
  'ansible-k8s1':
    - web.httpd
  'ansible-k8s3':
    - web.httpd
```


* 执行：salt "*" state.highstate
* 测试：salt "*" state.highstate test=True 类似于--dry-run
