# elk-docker
Elastic Pack（elk） docker composer

## 版本说明
基于ELK 6.1.1版本，如果需要其他版本，请自行修改文件中的版本号。

## 内容
包含：2个es节点 + 1个kibana节点 + 1个logstash节点 + 1个metricbeat节点

beat数据经由logstash存入es，所有节点由kibana管理并监控，包括logstash的pipeline也是由kibana在线管理。

## 步骤
1. 安装elk docker镜像：install.sh

2. 创建证书以及相应的docker容器实例（内含x-pack破解）：create.sh

3. 启动服务：start.sh
    
   http://localhost:9200    es入口
   
   http://localhost:5601    kibana入口
   
   用户名：elastic 密码：elkpwd
   
4. 停止服务：stop.sh

5. 清理所有内容：clean.sh （PS：请提前备份数据）

   将停止并删除容器实例、证书文件、数据卷。
   
## 特别申明
内容来源于互联网，仅用于学习研究参考。