# docker-ubuntu32bit-build

基於[erwinchang/docker-ubuntu1404-32bit][1]
建立build code環境

## 其它說明

* 手動執行docker image
```
docker run -it --rm erwinchang/docker-ubuntu32bit-build
```

* 將外部目錄mount到docker
```
docker run -it --rm --volume=/home/user:/root/workspace erwinchang/docker-ubuntu32bit-build
```

### 參考來源

* [sameersbn/docker-ubuntu][2]
* [nodejs/docker-node][3]




[1]:https://github.com/erwinchang/docker-ubuntu1404-32bit
[2]:https://github.com/sameersbn/docker-ubuntu/blob/master/Dockerfile
[3]:https://github.com/nodejs/docker-node/blob/master/6.11/Dockerfile

