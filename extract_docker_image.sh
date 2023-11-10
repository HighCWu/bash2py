git clone https://github.com/jjlin/docker-image-extract
cd docker-image-extract
./docker-image-extract -o ../output imiell/bash2py
cd ..
cp -r output/root/bin /root/bin
cp -r output/opt/* /opt/
