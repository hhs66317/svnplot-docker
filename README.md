# svnplot-docker

## To run:
 ```docker run -v /Users/swhite/workspace/svnplot:/svnplot -w /svnplot -i -t sww314:svnplot```

## To use:

```root@c89d2629483a:~# python /usr/local/lib/python2.7/dist-packages/svnplot/svnlog2sqlite.py --user USER --password XXXXX  https://SVN_URL/AAA/ XXXX.db```

 ```python svnplot/src/svnplot/svnplot.py -n "XXXXX" XXXXX.db graphs```

## To build:

git clone https://github.com/sww314/svnplot-docker.git
docker build svnplot-docker -t ubuntu:svnplot

Or 

docker build  https://github.com/sww314/svnplot-docker.git -t sww314:svnplot



