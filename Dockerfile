FROM centos:latest
MAINTAINER Amir Shams <amir.shams84@gmail.com>
##############################################################
# Dockerfile Version:   1.0
# Software:             centos7
# Software Version:     7.0
# Software Website:     https://www.centos.org/
# Description:          Centos7
##############################################################

RUN yum -y update ;
RUN yum clean all ;
RUN yum install -y epel-release ;
RUN yum install -y ansible git gcc gcc-c++ make net-tools sudo which wget file patch libtool texinfo tar unzip bzip2 bzip2-devel ; 
RUN yum install -y openssl openssl-devel readline readline-devel sqlite-devel tk-devel zlib zlib-devel ncurses-devel python-pip mc ;
RUN yum install -y tbb psmisc python-devel ;
RUN yum clean all ;
##############################################################
# Software:             PIP INSTALL PACKAGES
# Software Version:     1.0
# Software Website:     -
# Description:          required javascript library
##############################################################

RUN pip install --upgrade pip
RUN pip install numpy
RUN pip install scipy
RUN pip install plotly
RUN pip install pandas
RUN pip install xlrd
RUN pip install openpyxl
RUN pip install xlwt
RUN pip install XlsxWriter
RUN pip install lxml
RUN pip install zip
RUN pip install biom-format
##############################################################
# Software:             Regular Directories
# Software Version:     1.0
# Software Website:     -
# Description:          required javascript library
##############################################################

RUN mkdir /INPUTDIR /EXECDIR /OUTPUTDIR /TESTDIR /INDEXDIR
RUN chmod -R 0755 /INPUTDIR /EXECDIR /OUTPUTDIR /TESTDIR /INDEXDIR
##############################################################
# Dockerfile Version:   1.0
# Software:             SRA_TOOLKIT
# Software Version:     1.2
# Software Website:     SRA_TOOLKIT
# Description:          SRA_TOOLKIT 
##############################################################

RUN mkdir /EXECDIR/sratoolkit
RUN wget https://ftp-trace.ncbi.nlm.nih.gov/sra/sdk/2.8.2-1/sratoolkit.2.8.2-1-centos_linux64.tar.gz -P /EXECDIR/sratoolkit
RUN tar zxf /EXECDIR/sratoolkit/sratoolkit.2.8.2-1-centos_linux64.tar.gz -C /EXECDIR/sratoolkit
RUN rm -rf /EXECDIR/sratoolkit/sratoolkit.2.8.2-1-centos_linux64.tar.gz
RUN chmod -R 0755 /EXECDIR/sratoolkit/sratoolkit.2.8.2-1-centos_linux64
##############################################################
# Dockerfile Version:   1.0
# Software:             simply_SRA
# Software Version:     1.2
# Software Website:     simply_SRA
# Description:          simply_SRA 
##############################################################

RUN wget https://github.com/amirshams84/simply_SRA/blob/master/simply_sra.pyc?raw=true -O /simply_sra.pyc
RUN chmod -R 0755 /simply_sra.pyc
