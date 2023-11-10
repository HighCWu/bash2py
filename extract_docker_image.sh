git clone https://github.com/jjlin/docker-image-extract
cd docker-image-extract
./docker-image-extract -o ../output imiell/bash2py
cd ..
mkdir -p /root/bin/ /opt/
cp output/root/bin/bash2pyengine /root/bin/bash2pyengine
cp -r output/opt/bash2py-3.5 /opt/
