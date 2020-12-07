cd /root/docker
cat jdk-8u221-linux-x64* > jdk-8u221-linux-x64.tar.gz
cp /root/docker/jdk-8u221-linux-x64.tar.gz ~
cd ~
tar -xvf jdk-8u221-linux-x64.tar.gz

mv ~/.bashrc ~/.bashrc.back
echo '
    export JAVA_HOME="~/jdk1.8.0_221"
    export PATH=$JAVA_HOME/bin:$PATH
' > ~/.bashrc.addtemp
cat ~/.bashrc.addtemp ~/.bashrc.back > ~/.bashrc
rm -rf ~/.bashrc.addtemp ~/.bashrc.back
cat ~/.bashrc
source ~/.bashrc

rm -rf jdk-8u221-linux-x64.tar.gz
rm -rf /root/docker
