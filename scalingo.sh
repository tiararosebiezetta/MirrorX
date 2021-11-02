sed -i 's/main/main non-free/g' /etc/apt/sources.list
apt-get -qq update
apt-get -qq install -y tzdata curl aria2 p7zip-full p7zip-rar wget xz-utils libmagic-dev gcc libffi-dev nscd
apt-get -y autoremove && rm -rf /var/lib/apt/lists/* && apt-get clean
wget -q https://github.com/yzop/gg/raw/main/ffmpeg-git-arm64-static.tar.xz
tar -xf ff*.tar.xz && rm -rf *.tar.xz
mv ff*/ff* /usr/local/bin/ && rm -rf ff*
wget -q https://github.com/viswanathbalusu/megasdkrest/releases/latest/download/megasdkrest-arm64 -O /usr/local/bin/megasdkrest
chmod a+x /usr/local/bin/megasdkrest && mkdir /app/ && chmod 777 /app/
pip3 install --no-cache-dir MirrorX
apt-get purge -yqq gcc && apt-get -y autoremove && rm -rf /var/lib/apt/lists/* && apt-get clean
