FROM ubuntu:16.04
MAINTAINER Scott White <sww314@gmail.com>

RUN apt-get update && apt-get install -y \
	python-dev \
	python-pip \
	python-svn \
	subversion \
	svn-workbench 

RUN pip install \
	numpy \
	matplotlib

ENV SVNPLOT_VERSION 0.9.0
#https://bitbucket.org/sww314/svnplot/downloads/SVNPlot-0.8.10-py2-none-any.whl
# This does not work... :(
#ENV SVNPLOT_DOWNLOAD_URL -e hg:https://sww314@bitbucket.org/sww314/svnplot

RUN pip install https://bitbucket.org/sww314/svnplot/downloads/SVNPlot-$SVNPLOT_VERSION-py2-none-any.whl

