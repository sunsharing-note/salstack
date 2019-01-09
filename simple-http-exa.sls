httpd-install:
  pkg.installed:
    - name: httpd

httpd-service:
  service.running:
    - name: httpd
    - enable: True
