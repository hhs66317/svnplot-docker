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

ENV SNVPLOT_VERSION 0.8.9
ENV SVNPLOT_DOWNLOAD_URL https://bitbucket.org/nitinbhide/svnplot/downloads/SVNPlot-$SVNPLOT_VERSION-py2-none-any.whl

RUN pip install $SVNPLOT_DOWNLOAD_URL 

