#!/usr/bin/env sh
echo "设置时区"
sudo rm -f /etc/localtime
sudo ln -s /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
chmod 755 ./*.sh
# echo "拉取源码"
# git clone --depth 1 -b jd https://github.com/wintjade/un_break.git ~/src
mkdir ~/src/
cp -rf * ~/src/
cd ~/src/

echo "修改源码"
sed -i "s/indexOf('GITHUB')/indexOf('GOGOGOGO')/g" `ls -l |grep -v ^d|awk '{print $9}'`
sed -i 's/indexOf("GITHUB")/indexOf("GOGOGOGO")/g' `ls -l |grep -v ^d|awk '{print $9}'`
npm install
chmod 755 ./*.sh
