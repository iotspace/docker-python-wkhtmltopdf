# Instroduction

This is demostration of using docker image `forthuan/python-wkhtmltopdf` to generate pdf file reports for RIA project.

# Setup Python Environment

Activate pipenv

```
cd html2pdf
pipenv install
pipenv shell
```

Install dependencies
```
sudo apt-get update
sudo apt-get install -y wget fontconfig libfreetype6 libpng16-16 libx11-6 libxcb1 libxext6 libxrender1 xfonts-75dpi xfonts-base libfontconfig1 fontconfig-config libx11-data libxau6 libxdmcp6 xfonts-utils ucf fonts-dejavu-core ttf-bitstream-vera fonts-liberation libbsd0 libfontenc1 libxfont2 x11-common xfonts-encodings
```

Install wkhtml2pdf
* https://computingforgeeks.com/install-wkhtmltopdf-on-ubuntu-debian-linux/

Install wkhtmltopdf on Ubuntu 20.04/18.04
**Ubuntu 20.04:**
```
wget https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6-1/wkhtmltox_0.12.6-1.focal_amd64.deb
sudo apt install ./wkhtmltox_0.12.6-1.focal_amd64.deb
```
**Ubuntu 18.04:**
```
wget https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6-1/wkhtmltox_0.12.6-1.bionic_amd64.deb
sudo apt install ./wkhtmltox_0.12.6-1.bionic_amd64.deb
```
**Ubuntu 16.04:**
```
wget https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6-1/wkhtmltox_0.12.6-1.xenial_amd64.deb
sudo apt install ./wkhtmltox_0.12.6-1.xenial_amd64.deb
```
Run script
```
python3 print.py
```
# 