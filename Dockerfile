FROM flobo/centos_compile_utest:6
MAINTAINER The U-TEST Team

RUN wget -O /tmp/eclipse.tgz "http://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/indigo/SR2/eclipse-rcp-indigo-SR2-linux-gtk-x86_64.tar.gz&r=1"
RUN tar xfz /tmp/eclipse.tgz -C /opt
