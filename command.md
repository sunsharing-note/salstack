* salt 'ansible3' state.sls apache.apache  saltenv=prod
* salt 'ansible3' state.sls  php.php saltenv=prod
* salt 'ansible3' state.highstate
* salt -S '192.168.31.200' state.sls apache.apache saltenv=prod
* salt 'ansible3' cmd.run "ps -ef |grep mysql |grep -v grep |awk '{print \$2}'|xargs kill -9 "
