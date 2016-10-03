FROM flobo/centos_compile_utest:6
MAINTAINER The U-TEST Team

RUN wget -O /tmp/eclipse.tgz "http://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/indigo/SR2/eclipse-rcp-indigo-SR2-linux-gtk-x86_64.tar.gz&r=1"
RUN tar xfz /tmp/eclipse.tgz -C /opt
#RUN wget -O /tmp/deltapack.zip "http://www.eclipse.org/downloads/download.php?file=/eclipse/downloads/drops/R-3.8.2-201301310800/eclipse-3.8.2-delta-pack.zip"
RUN wget -O /tmp/deltapack.zip "http://www.eclipse.org/downloads/download.php?file=/eclipse/downloads/drops/R-3.7.2-201202080800/eclipse-3.7.2-delta-pack.zip"
RUN mkdir -p /opt/eclipse/deltapack ; unzip -d /opt/eclipse/deltapack /tmp/deltapack.zip
RUN rm -f /tmp/*.tgz ; rm -f /tmp/*.zip
