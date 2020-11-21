sudo apt install python3-pip python3-dev libpq-dev curl postgresql-client
sudo apt install python3-pip python3-dev libpq-dev postgresql postgresql-contrib nginx curl
sudo -u postgres psql
sudo -H pip3 install --upgrade pip
sudo -H pip3 install virtualenv
mkdir smarthome
virtualenv smarthomeenv
source smarthome/bin/activate
ls
source smarthomeenv/bin/activate
pip install django gunicorn psycopg2-binary
ls
django-admin.py startproject smarthomeproj ~/smarthome
cd smarthome
ls
cd smarthomeproj/
ls
cd ..
nano smarthomeproj/settings.py 
ls
cd ..
ls
~/smarthome/manage.py makemigrations
nano smarthomeproj/settings.py 
nano smarthome/smarthomeproj/settings.py 
~/smarthome/manage.py makemigrations
~/smarthome/manage.py migrate
~/smarthome/manage.py createsuperuser
~/smarthome/manage.py collectstatic
sudo ufw allow 8
~/smarthome/manage.py runserver 0.0.0.0:8000
cd smarthome
ls
cd smarthomeproj/
gunicorn --bind 0.0.0.0:8000 smarthomeproject.wsgi
gunicorn --bind 0.0.0.0:8000 smarthome.wsgi
gunicorn --bind 0.0.0.0:8000 smarthomeproject.wsgi
ls
nano wsgi.py 
gunicorn --bind 0.0.0.0:8000 smarthomeproj.wsgi
nano wsgi.py 
gunicorn --bind 0.0.0.0:8000 smarthome.wsgi
cd ..
ls
cd ..
ls
cd smarthomeenv
ls
gunicorn --bind 0.0.0.0:8000 smarthome.wsgi
gunicorn --bind 0.0.0.0:8000 smarthomeproj.wsgi
gunicorn --bind 0.0.0.0:8000 smarthome.wsgi
cd ..
ls
cd smarthome
ls
cd smarthomeproj/
ls
nano __init__.py 
nano settings.py 
gunicorn --bind 0.0.0.0:8000 myproject.wsgi
gunicorn --bind 0.0.0.0:8000 smarthomeproj.wsgi
cd ..
gunicorn --bind 0.0.0.0:8000 smarthomeproj.wsgi
deactivate
sudo nano /etc/systemd/system/gunicorn.socket
sudo nano /etc/systemd/system/gunicorn.service
sudo systemctl start gunicorn.socket
sudo systemctl enable gunicorn.socket
sudo systemctl status gunicorn.socket
file /run/gunicorn.sock
sudo journalctl -u gunicorn.socket
sudo systemctl status gunicorn
curl --unix-socket /run/gunicorn.sock localhost
sudo systemctl status gunicorn
exit
sudo systemctl status gunicorn
ls
cd smarthomeenv/
ls
cd bin
ls
sudo nano /etc/systemd/system/gunicorn.service
sudo systemctl daemon-reload
sudo systemctl restart gunicorn
sudo journalctl -u gunicorn
ls
pwd
sudo nano /etc/systemd/system/gunicorn.service
sudo systemctl daemon-reload
sudo systemctl restart gunicorn
sudo journalctl -u gunicorn
sudo nano /etc/nginx/sites-available/myproject
sudo nano /etc/nginx/sites-available/smarthome
sudo ln -s /etc/nginx/sites-available/myproject /etc/nginx/sites-enabled
sudo ln -s /etc/nginx/sites-available/smarthome /etc/nginx/sites-enabled
sudo nginx -t
sudo ln -s /etc/nginx/sites-available/smarthome /etc/nginx/sites-enabled
cd /etc/nginx/sites-enabled  
ls
sudo rm myproject  
sudo rm myproject  sudo nginx -t
sudo nginx -t
sudo systemctl restart nginx
sudo nginx -t
sudo ufw delete allow 8000
sudo ufw allow 'Nginx Full'
sudo systemctl status gunicorn.socket
sudo journalctl -u gunicorn.socket
exit
reboot
sudo reboot
pwd
ls
cd smarthome
l
pwd
cd smarthomeproj/
ls
pwd
cd ..
ls
cd ..
ls
cd smarthome
ls
pwd
cd ..
ls
cd ..
ls
cd smarthome/
ls
cd smarthomeenv
ls
cd bin
ls
pwd
cd ..
ls
cd smarthome
ls
cd ..
ls
source smarthomeenv/bin/activate
ls
cd smarthome
ls
gunicorn --bind 0.0.0.0:8000 smarthomeproj.wsgi
exot
deactivate
ls
cd smarthomeproj/
cd ..
pwd
cd ..
ls
cd smarthomeenv/
ls
pwd
curl --unix-socket /run/gunicorn.sock localhost
ls
cd ..
ls
cd smarthome
ls
cd ..
ls
pwd
cd smarthome
ls
source /home/smarthome/smarthomeenv/bin/activate
/home/smarthome/smarthomeenv/bin/python3.8 /home/smarthome/.vscode-server/extensions/ms-python.python-2020.11.367453362/pythonFiles/pyvsc-run-isolated.py pip install -U pylint
git init
git add .
git commit -m "First commit"
git config --global user.email "smarthome2021@gmail.com"
git config --global user.name "smarthome"
git remote add https://github.com/nunocaseiro/SmartHomeServer.git
git remote add origin https://github.com/nunocaseiro/SmartHomeServer.git
git remove -v
git remote -v
git push -u origin main
git push -u origin 
git push -u origin master
git remote -v
git checkout master
git pull origin master
git checkout main
git pull origin main
git push -u origin main
git remove -v
git remote -v
git remove add origin https://github.com/nunocaseiro/SmartHomeServer.git
git remote add origin https://github.com/nunocaseiro/SmartHomeServer.git
git remote -v
git push -u origin main
git pull
git pull main
git pull master
git pull
git push -f
git checkout
git push -f
git push origin master
git add .
git commit -m "First commit"
git push -u origin master
git push -u origin main
git push -f origin main
git push -u origin main
git pull
git push origin main
git checkout
git add .
git commit -mt "Second commit"
git commit -m "Second commit"
git push origin master
lssudo systemctl restart gunicorn
sudo systemctl restart gunicorn
ls
cd smarthome
ls
cd ..
manage.py makemigrations
smarthome/smarthomeproj/manage.py makemigrations
smarthome/manage.py makemigrations
smarthome/manage.py migration
smarthome/manage.py migrate
sudo systemctl restart gunicorn
smarthome/manage.py makemigrations
smarthome/manage.py migrate
sudo systemctl restart gunicorn
systemctl status gunicorn.service
sudo systemctl restart gunicorn
systemctl status gunicorn.service
sudo systemctl restart gunicorn
systemctl status gunicorn.service
smarthome/manage.py makemigrations
sudo systemctl restart gunicorn
smarthome/manage.py makemigrations
smarthome/manage.py migrate
sudo systemctl restart gunicorn
smarthome/manage.py makemigrations
smarthome/manage.py migrate
sudo systemctl restart gunicorn
smarthome/manage.py makemigrations
smarthome/manage.py migrate
sudo systemctl restart gunicorn
smarthome/manage.py makemigrations
smarthome/manage.py migrate
sudo systemctl restart gunicorn
smarthome/manage.py makemigrations
smarthome/manage.py migrate
sudo systemctl restart gunicorn
smarthome/manage.py makemigrations
smarthome/manage.py migrate
sudo systemctl restart gunicorn
smarthome/manage.py makemigrations
smarthome/manage.py migrate
sudo systemctl restart gunicorn
systemctl status gunicorn.service
git add .
git commit -m "Implemented models and endpoints: user,room,house,sensorvalues,sensor"
git push -u origin master
cd smarthome
ls
cd ..
cd smarthomeenv/
cd ..
source smarthomeenv/bin/activate
smarthome/manage.py makemigrations
smarthome/manage.py migrate
sudo systemctl restart gunicorn
systemctl status gunicorn.service
source /home/smarthome/smarthomeenv/bin/activate
sudo systemctl restart gunicorn
