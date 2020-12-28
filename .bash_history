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
ls
git pull
git add .
git commit - m "Alterações"
git commit
git push
git pull
git push
sudo systemctl restart gunicorn
source smarthomeenv/bin/activate
ls
smarthome/manage.py makemigrations
smarthome/manage.py migrate
deactivate
sudo systemctl status gunicorn
sudo systemctl restart gunicorn
ls
cd ..
ls
source smarthomeenv/bin/activate
pip install django-cors-headers
/usr/bin/python3 /home/smarthome/.vscode-server/extensions/ms-python.python-2020.11.371526539/pythonFiles/pyvsc-run-isolated.py pip install -U pylint --user
ls
npx
cd ~
curl -sL https://deb.nodesource.com/setup_10.x -o nodesource_setup.sh
nano nodesource_setup.sh
sudo bash nodesource_setup.sh
sudo apt install nodejs
nodejs -v
sudo apt install nodejs
nodejs -v
sudo apt install nodejs
nodejs -v
ls
npx
ls
cd smarthome
ls
cd smarthomeproj/
npx create-react-app frontend
cd npm start
cd frontend/
ls
npm start
npm run build
npm intall -g serve
install
npm install -g serve
sudo npm install -g serve
serve -s build
nginx
sudo npm instll pm2@latest -g
sudo npm install pm2@latest -g
pm2 start app.js
pm2 start App.js
pm2 start /src/App.js
pm2 start App.js
pm2 start /home/smarthome/smarthome/smarthomeproj/frontend/App.js
pm2 start /home/smarthome/smarthome/smarthomeproj/frontend/src/App.js
pm2 startup systemd
sudo env PATH=$PATH:/usr/bin /usr/lib/node_modules/pm2/bin/pm2 startup systemd -u smarthome --hp /home/smarthome
pm2 save
sudo systemctl start pm2-smarthome
sudo systemctl start pm2- smarthome
systemctl status pm2-smarthome
sudo systemctl start pm2-smarthome
systemctl status pm2-smarthome.service
pm2 startup systemd
sudo env PATH=$PATH:/usr/bin /usr/lib/node_modules/pm2/bin/pm2 startup systemd -u smarthome --hp /home/smarthome
pm2 save
sudo reboot
systemctl status pm2-smarthome
sudo systemctl sudo systemctl status gunicorn
sudo systemctl status gunicorn
sudo systemctl restart gunicorn
sudo nano /etc/nginx/sites-available/frontend
cd /etc/nginx/sites-available/
ls
sudo nano smarthome
sudo nano /etc/nginx/sites-av
sudo nginx -t
sudo systemctl restart nginx
serve -s build
sudo nano /etc/nginx/sites-available/frontend
sudo systemctl restart nginx
sudo systemctl start pm2-sammy
sudo systemctl start pm2-smarthome
systemctl status pm2-smarthome
pm2 monit
pm2 list
systemctl status pm2-smarthome
pm2 list
pm2 info smarthome
pm2 info App
cd  /etc/nginx/sites-available/f
cd  /etc/nginx/sites-available/
ls
rm -rf frontend
sudo rm -rf frontend
ls
sudo systemctl restart nginx
pm2 restart smarthome
pm2 restart App
pm2 
pm2 list
pm2 logs
ls
cd ~
ls
cd smarthome
ls
cd smarthomeproj/
ls
cd fr
cd frontend/
ls
sudo apt install build-essential
node /src/App.js
node App.js
node 
npm run
npm start 
node App.js
npm install -g
sudo npm install -g
node App.js
rm -rf node_modules
npm install
cd src/
node App.js
cd ..
ls
node App.js
cd /src
ls
cd src
ls
node App.js
pm2 logs
npm start
cd ..
npm start
npm install -g npm@latest
sudo npm install -g npm@latest
rm -rf node_modules
npm install
npm start
npm install -g react-scripts
sudo npm install -g react-scripts
npm start
npm i -S react-scripts
npm start
nano package.json 
cd ..
sudo rm -rf frontend
npx create-react-app frontend
cd frontend/
ls
npm start
pm2 list
pm2 log
pm2 restart smarthome
pm2 restart App
pm2 log
pm2 list
npm start
pm2 stop App
pm2
pm2 remove
pm2 delete APP
pm2 delete App
pm2 startup systemd
pm2 list
pm2 start /src/App.js
pm2 start src/App.js
pm2 list
pm2 startup systemd
sudo env PATH=$PATH:/usr/bin /usr/lib/node_modules/pm2/bin/pm2 startup systemd -u smarthome --hp /home/smarthome
pm2 save
pm2 list
sudo reboot
pm2 list
pm2 log
ls
pm2 log
pm2 restart App
pm2 log
pm2 delete App
pm2 start npm -- run src/App.js
pm2 list
pm2 log
pm2 delete App.js
pm2 start src/App.js
cd smarthomeproj/
ls
cd frontend/
ls
pm2 start src/App.js
npm log
pm2 log
pm2 delete App
pm2 delete npm
pm2 start src/App.js
pm2 log
pm2 delete App
npm start 
cd src
npm start
cd ..
node App.js
cd src/
node App.js
cd ..
node src/App.js
ls
npm install
node src/App.js
npm install
node src/App.js
ls
cd src
node App.js
pm2
pm2 list
npm start
node App.js
pm2 start App.js
pm2 log
node -v
npm install node@latest -g
sudo npm install node@latest -g
node
node App.js
sudo npm config set ignore-scripts false
config set ignore-scripts false
npm config set ignore-scripts false
node src/App.js
node App.js
sudo apt install nodejs
nodejs -v
cd ~
nodejs -v
sudo apt install nodejs
url -sL https://deb.nodesource.com/setup_14.x -o nodesource_setup.sh
curl -sL https://deb.nodesource.com/setup_14.x -o nodesource_setup.sh
nano nodesource_setup.sh
sudo bash nodesource_setup.sh
sudo apt install nodejs
ls
cd smarthome
ls
cd smarthomeproj/
ls
npx create-react-app frontend
npm run build
npm start
ls
cd frontend/
npm run build
cd 
ls
cd /
ls
cd var
ls
cd www
ls
cd html/
ls
cd ~
serve -s build
ls
cd smarthome
ls
cd ..
ls
cd /
ls
cd ..
ls
cd home
ls
nano /etc/
sudo nano /etc/nginx/sites-available/
sudo nano /etc/nginx/sites-available/smarthome 
serve -s build
sudo systemctl status nginx
sudo systemctl reload nginx
sudo nano /etc/nginx/sites-available/smarthome 
serve -s build
npm run build
ls
cd smarthome/
ls
cd smarthomem
cd smarthome
ls
npm run build
cd smarthomeproj/
ls
cd server/
npm run build
ls
cd ..
ls
cd frontend/
ls
npm run build
sudo nginx -t
cd /var
ls
cd www
ls
cd html/
ls
cd ..
ls
npm run build
cd home/
ls
cd smarthome/
ls
cd smarthome
ls
cd smarthomeproj/
lsd
ls
cd frontend/
ls
pwd
sudo nano /etc/nginx/sites-available/smarthome 
sudo systemctl reload nginx
sudo systemctl status nginx
sudo nano /etc/nginx/sites-available/smarthome 
pm2 serve build
pm2 delete App
pmlist
pm list
pm2 list
pm delete static-page-server8080
pm2 delete static-page-server8080
pm2 delete static-page-server-8080
cd ..
pm2 serve build
pm2 delete-page-server-8080
pm2 delete static-page-server-8080
cd frontend/
pm2 serve build
pm2 status
pm2 log
sudo nano /etc/nginx/sites-available/smarthome 
ngins
nginx
sudo nano /etc/nginx/sites-available/smarthome 
pwd
sudo nano /etc/nginx/sites-available/smarthome 
nginx
sudo nxing
sudo nginx
sudo nano /etc/nginx/sites-available/smarthome 
sudo ngin
sudo nano /etc/nginx/sites-available/smarthome 
sudo nginx
cd /etc/nginx/sites-enabled/
ls
cd ..
ls
cd sites-enabled/
ls
cd sma
nano smarthome
sudo nano /etc/nginx/sites-available/smarthome 
sudo nginx
sudo nginx restart
sudo nginx 
sudo nginx reload 
sudo nginx reloadsudo systemctl reload nginx 
sudo systemctl reload nginx
sudo systemctl status
sudo nginx status
sudo systemctl status nginx
sudo nano /etc/nginx/sites-available/smarthome 
sudo systemctl reload nginx
sudo systemctl status nginx
sudo nano /etc/nginx/sites-available/smarthome 
sudo systemctl reload nginx
sudo systemctl status nginx
sudo nano /etc/nginx/sites-available/smarthome 
sudo systemctl status nginx
sudo systemctl reload nginx
sudo systemctl status nginx
sudo nano /etc/nginx/sites-available/smarthome 
sudo systemctl reload nginx
sudo systemctl status nginx
sudo nano /etc/nginx/sites-available/smarthome 
pm2
pm2 list
pm2 log
sudo systemctl reload nginx
sudo nano /etc/nginx/sites-available/smarthome 
sudo /var/log/nginx/error.log
sudo nano /var/log/nginx/error.log
sudo nano /etc/nginx/sites-available/smarthome 
sudo systemctl reload nginx
sudo nano /var/log/nginx/error.log
cd /home
cd smarthome/
ls
cd smarthome
ls
cd smarthomeproj/
ls
cd frontend/
npm serve
npm build
npm run build
serve -s build
pm2
pm2 status
serve -s build
sudo apt install xsel
serve -s build
ls
sudo nano /etc/nginx/sites-available/smarthome 
sudo systemctl reload nginx
sudo systemctl reload guicorn
sudo systemctl reload gunicorn
sudo systemctl restart gunicorn
serve -s build
sudo nano /etc/nginx/sites-available/smarthome 
sudo systemctl restart gunicorn
serve -s build
sudo nano /var/log/nginx/error.log
sudo nano /etc/nginx/sites-available/smarthome 
sudo systemctl restart gunicorn
serve -s build
sudo systemctl reload nginx
serve -s build
sudo nano /etc/nginx/sites-available/smarthome 
sudo systemctl reload nginx
sudo systemctl restart gunicorn
cd ..
ls
cd ..
ls
manage.py collectstatic
ls
/manage.py collectstatic
smarthome/manage.py collectstatic
cd ..
ls
source smarthomeenv/bin/activate
cd smarthome
smarthome/manage.py collectstatic

/manage.py collectstatic
manage.py collectstatic
cd .. 
ls
smarthome/manage.py collectstatic
sudo reboot
pm2 status
pm2 log
pm2 delete App
sudo reboot
pm2 status
pm2 delete App
cd smarthomeproj/
ls
cd frontend/
ls
pm2 serve build
pm2 status
pm2 list
pm2 startup systemd
sudo env PATH=$PATH:/usr/bin /usr/lib/node_modules/pm2/bin/pm2 startup systemd -u smarthome --hp /home/smarthome
pm2 save
pm2 info 
pm2 monit
cd ..
pm2 serve build
serve -s build
ls
cd ..
cd smarthomeproj/
ls
cd frontend/
ls
serve -s build
sudo reboot
ls
pm2 serve build --spa
cd smarthomeproj/
ls
cd frontend/
ls
pm2 serve build --spa
pm2
pm2 status
pm2 delete static-page-server-8080
pm2 serve build --spa
pm2 delete static-page-server-8080
ls
pwd
pm2 serve /home/smarthome/smarthome/smarthomeproj/frontend 5000 "App" --spa
pm2 delete static-page-server-5000
serve -s build
sudo nano /etc/nginx/sites-available/smarthome 
sudo systemctl reload nginx
serve -s build
pm2 start --name App npm --start
pm2 start --name App npm -start
pm2 start --name App npm serve
pm2 delete App
ls
pm2 start --name App
pm2 start --name App npm -- start
tail -100 /var/log/nginx/error.log 
pm2 status
sudo tail -100 /var/log/nginx/error.log 
netstat -plant
sudo apt install net-tools
netstat -plant
pm2 show server
pm2 show App
pm2 delete App
pm2 start --name App npm -- serve 
pm2 delete App
pm2 start --name App npm -- serve build
pm2 delete App
cd src/
pm2 start App.js
pm2 status
pm2 delete App
pm2 serve -p 5000 
pm2 delete static-page-server8080
pm2 delete static-page-server-8080
serve -s build
cd ..
serve -s build
npm start
serve -s build
ls
cd api
ls
cd ..
django-admin startapp frontend
cd ..
source smarthomeenv/bin/activate
ls
cd smarthome
django-admin startapp frontend
ls
npm install -g vue-cli
sudo npm install -g vue-cli
ls
cd smarthomeproj/
vue init webpack
sudo systemctl restart guinicorn
sudo systemctl restart gunicorn
mkdir frontend
ls
cd frontend
ls
vue init webpack
npm run build
sudo systemctl restart guinicorn
sudo systemctl restart gunicorn
sudo nano /etc/nginx/sites-available/smarthome
sudo systemctl reload nginx
cd ..
ls
cd ..
ls
manage.py collectstatic
./manage.py collectstatic
sudo systemctl restart guinicorn
sudo systemctl restart gunicorn
cd ..
cd home
cd ..
cd home/
ls
cd smarthome/
mkdir static
./manage.py collectstatic
smarthome/manage.py collectstatic
ls
rm -rf static
ls
cd smarthome
mkdir static
ls
cd smarthomeproj/
ls
cd front
cd frontend/
ls
yarn serve
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt update && sudo apt install yarn
yarn serve
npm uninstall -g serve 
sudo npm uninstall -g serve
n
yarn serve
cd ..
source smarthomeenv/bin/activate
smarthome/manage.py collectstatic
sudo systemctl restart guinicorn
sudo systemctl restart gunicorn
npm run build
ls
cd smarthome
ls
cd smarthomeproj/
ls
cd frontend/
npm run build
npm run build´
npm run build
sudo systemctl restart gunicorn
npm run build
smarthome/manage.py collectstatic
cd .
cd 
cd smarthome
ls
smarthome/manage.py collectstatic
cd ..
smarthome/manage.py collectstatic
sudo smarthome/manage.py collectstatic
smarthome/manage.py collectstatic
chmod +rwx /home/smarthome/smarthome
smarthome/manage.py collectstatic
npm run build
cd smarthome
ls
cd smarthomeproj/
ls
cs frontend/
cd frontend/
npm run build
cd ..
ls
smarthome/manage.py collectstatic
ls
cd ..
smarthome/manage.py collectstatic
cd smarthome/
smarthome/manage.py collectstatic
sudo nano /etc/nginx/available-sites
cd /etc/nginx/
ls
cd sites-available/
ls
sudo nano smarthome
sudo nano /etc/nginx/available-sites
sudo nano smarthome
ls
cd ..
cd 
ls
cd smarthome
cd ..
ls
cd smarthome
ls
cd smarthomeproj/
ls
cd frontend/
npm run build
cd ..
smarthome/manage.py collectstatic
ls
cd ..
smarthome/manage.py collectstatic
ls
cd smarthome
ls
cd smarthomeproj/
ls
cd frontend/
npm build
npm run build
npm build
npm run build
sudo systemctl restart gunicorn
cd /etc/nginx/available-sites
cd /etc/nginx/
ls
cd sites-available/
ls
sudo nano smarthome
sudo systemctl reload nginx
systemctl status
sudo systemctl restart nginx
systemctl statys nginx
systemctl status nginx
sudo nano smarthome
sudo systemctl restart nginx
cd ..
ls
cd ..
ls
cd 
ls
smarthome/manage.py collectstatic
ls
cd smarthome
ls
git commit -m "Frontend"
git add .
git commit -m "Frontend"
deactivate
git push
git checkout
ls
cd ..
source smarthomeenv/bin/activate
sudo systemctl reload gunicorn
sudo systemctl restart gunicorn
sudo systemctl restart gunicorn´
sudo systemctl restart gunicorn
GIT BRANCH
ls
gir branch
cd smarthomeproj/
ls
git
git branch
git  add .
git commit -M "Last value of sensor"
git commit -m "Last value of sensor"
git push origin master
ls
cd ..
ls
source smarthomeenv/bin/activate
pip install dj-rest-auth
sudo systemctl restart gunicorn
ls
smarthome/manage.py makemigrations
smarthome/manage.py migrate
smarthome/manage.py makemigrations
smarthome/manage.py migrate
sudo systemctl restart gunicorn
ls
deactivat
deactivate
cd /etc/ngi
cd /etc/nginx/
ls
sudo nano nginx.conf
sudo nano sites-available/smarthome 
sudo nano uwsgi_params 
ls
cd ~
ls
source smarthomeenv/bin/activate
python -m pip install django-cors-headers
sudo systemctl restart gunicorn
sudo systemctl status
sudo systemctl journal
sudo systemctl status gunicorn.socket
sudo journalctl -u gunicorn.socket
sudo systemctl status gunicorn
sudo systemctl restart gunicorn
sudo systemctl status gunicorn
sudo systemctl restart gunicorn
sudo systemctl status gunicorn
sudo systemctl restart gunicorn
ls
cd ..
ls
source smarthomeenv/bin/activate
smarthome/manage.py makemigrations
smarthome/manage.py migrate
sudo systemctl restart gunicorn
smarthome/manage.py makemigrations
smarthome/manage.py migrate
sudo systemctl restart gunicorn
ls
cd ..
ls
source smarthomeenv/bin/activate
ls
smarthome/manage.py makemigrations
smarthome/manage.py migrate
smarthome/manage.py makemigrations
smarthome/manage.py migrate
sudo systemctl restart gunicorn
smarthome/manage.py makemigrations
smarthome/manage.py migrate
sudo systemctl restart gunicorn
ls
cd ..
source smarthomeenv/bin/activate
smarthome/manage.py changepassword smarthome
sudo systemctl restart gunicorn
deactivate
ls
cd smarthome
git add .
git commit -m "stuff"
git checkout
git push
sudo systemctl restart gunicorn
mosquitto_pub localhost -t teste -m "hello world"
mosquitto_pub -h localhost -t teste -m "hello world"
mosquitto_pub -h localhost -t test -m "hello world"
sudo ufw allow 8883
sudo ufw allow 1883
sudo apt update
sudo apt install mosquitto mosquito-clients
sudo apt install mosquitto mosquitto-clients
mosquitto_sub -h localhost -t test
ls
cd ..
ls
source smarthomeenv/bin/activate
ls
cd smarthome
ls
pip install paho-mqtt
deactivate
ls
sudo systemctl restart gunicorn
sudo systemctl status
sudo systemctl status gunicorn
sudo systemctl journal
sudo journalctl -u gunicorn
sudo systemctl restart gunicorn
sudo systemctl restart gunicorn 
sudo systmctl status gunicorn
sudo systemctl status gunicorn
ls
cd smarthomeproj/
cd ..
ls
cd ..
source smarthomeenv/bin/activate
ls
pip3 install paho-mqtt
sudo systemctl restart gunicorn 
sudo systemctl status gunicorn
sudo systemctl restart gunicorn 
sudo systemctl status gunicorn
sudo systemctl restart gunicorn 
sudo systemctl status gunicorn
sudo systemctl restart gunicorn 
sudo systemctl status gunicorn
sudo systemctl restart gunicorn 
sudo systemctl status gunicorn
sudo systemctl restart gunicorn 
sudo systemctl status gunicorn
sudo systemctl restart gunicorn 
sudo systemctl status gunicorn
sudo systemctl restart gunicorn 
sudo systemctl status gunicorn
sudo systemctl restart gunicorn 
sudo systemctl status gunicorn
sudo systemctl restart gunicorn 
ls
deactivate
ls
git add .
ls
cd smarthome
git add .
git commit -m "mqtt"
git push origin main
git push 
git checkout
sudo mosquitto_passwd -c /etc/mosquitto/passwd smarthome
sudo nano /etc/mosquitto/conf.d/default.conf
sudo systemctl restart mosquitto
sudo systemctl status gunicorn
sudo systemctl restart gunicorn
sudo systemctl status gunicorn
sudo systemctl status mosquitto
sudo systemctl status gunicorn
sudo journalctl -u gunicorn
sudo journalctl -u gunicorn.socket
sudo systemctl restart gunicorn
ls
cd smarthome
ls
exit
cd smarthome
ls
cd smarthomeproj/
ls
cd ..
ls
cd smarthomeenv/
ls
sudo restart systemctl guni
sudo systemctl restart gunicorn
sudo journalctl -u gunicorn
sudo systemctl status gunicorn
sudo systemctl restart gunicorn
sudo systemctl status gunicorn
ls
cd /etc
ls
sudo systemctl restart gunicorn
ls
sudo systemctl status gunicorn
sudo systemctl restart gunicorn
sudo systemctl status gunicorn
sudo systemctl restart gunicorn
sudo systemctl status gunicorn
sudo systemctl restart gunicorn
sudo systemctl status gunicorn
sudo systemctl restart gunicorn
sudo systemctl status gunicorn
sudo systemctl restart gunicorn
sudo systemctl status gunicorn
sudo systemctl restart gunicorn
sudo systemctl status gunicorn
sudo systemctl restart gunicorn
sudo systemctl status gunicorn
sudo systemctl restart gunicorn
sudo systemctl status gunicorn
sudo systemctl restart gunicorn
sudo systemctl status gunicorn
cd ..
ls
cd sma
cd usr/
ls
cd ..
cd home/
ls
cd smarthome/
ls
sudo systemctl restart gunicorn
sudo systemctl status gunicorn
sudo systemctl restart gunicorn
sudo systemctl status gunicorn
sudo systemctl restart gunicorn
sudo systemctl status gunicorn
sudo systemctl restart gunicorn
sudo systemctl status gunicorn
sudo systemctl restart gunicorn
sudo systemctl status gunicorn
sudo systemctl restart gunicorn
sudo systemctl status gunicorn
sudo systemctl restart gunicorn
sudo systemctl status gunicorn
sudo systemctl restart gunicorn
sudo systemctl status gunicorn
sudo systemctl restart gunicorn
sudo systemctl status gunicorn
ls
source smarthomeenv/bin/activate
ls
cd smarthome
ls
cd ..
smarthome/manage.py makemigrations
sudo systemctl restart gunicorn
sudo systemctl status gunicorn
sudo systemctl restart gunicorn
sudo systemctl status gunicorn
sudo systemctl restart gunicorn
sudo systemctl status gunicorn
sudo systemctl restart gunicorn
sudo systemctl status gunicorn
sudo systemctl restart gunicorn
sudo systemctl status gunicorn
sudo systemctl restart gunicorn
sudo systemctl status gunicorn
sudo systemctl restart gunicorn
sudo systemctl status gunicorn
sudo systemctl restart gunicorn
sudo systemctl status gunicorn
sudo systemctl restart gunicorn
sudo systemctl status gunicorn
sudo systemctl restart gunicorn
sudo systemctl status gunicorn
sudo systemctl restart gunicorn
sudo systemctl status gunicorn
sudo systemctl restart gunicorn
sudo systemctl status gunicorn
sudo systemctl restart gunicorn
sudo systemctl status gunicorn
sudo systemctl restart gunicorn
sudo systemctl status gunicorn
sudo systemctl restart gunicorn
sudo systemctl status gunicorn
sudo systemctl restart gunicorn
sudo systemctl status gunicorn
sudo systemctl restart gunicorn
sudo systemctl status gunicorn
sudo systemctl restart gunicorn
sudo systemctl status gunicorn
sudo systemctl restart gunicorn
sudo systemctl status gunicorn
sudo systemctl restart gunicorn
sudo systemctl status gunicorn
sudo journalctl -u gunicorn.socket
sudo journalctl -u gunicorn
sudo systemctl restart gunicorn
sudo systemctl status gunicorn
sudo systemctl restart gunicorn
sudo systemctl status gunicorn
sudo systemctl restart gunicorn
sudo systemctl status gunicorn
sudo systemctl restart gunicorn
sudo systemctl status gunicorn
sudo systemctl restart gunicorn
sudo systemctl status gunicorn
sudo systemctl restart gunicorn
sudo systemctl status gunicorn
sudo systemctl restart gunicorn
sudo systemctl status gunicorn
sudo systemctl restart gunicorn
sudo systemctl status gunicorn
sudo systemctl restart gunicorn
sudo systemctl status gunicorn
sudo systemctl restart gunicorn
sudo systemctl status gunicorn
sudo systemctl restart gunicorn
sudo systemctl status gunicorn
deactivate
ls
cd smarthome
ls
git add .
git commit -m "many stuff"
git push
sudo systemctl restart gunicorn
sudo systemctl status gunicorn
sudo systemctl restart gunicorn
sudo systemctl status gunicorn
sudo systemctl restart gunicorn
sudo systemctl status gunicorn
sudo systemctl restart gunicorn
sudo systemctl status gunicorn
ls
cd ..
ls
source smarthomeenv/bin/source
source smarthomeenv/bin/activate
ls
smarthome/manage.py makemigrations
smarthome/manage.py migrate
ls
cd ..
ls
source smarthomeenv/bin/activate
ls
smarthome/manage.py makemigrations
smarthome/manage.py migrate
smarthome/manage.py makemigrations
smarthome/manage.py migrate
sudo systemctl restart gunicorn
sudo systemctl status gunicorn
sudo systemctl restart gunicorn
sudo systemctl status gunicorn
sudo systemctl restart gunicorn
sudo systemctl status gunicorn
sudo systemctl restart gunicorn
sudo systemctl status gunicorn
sudo systemctl restart gunicorn
sudo systemctl status gunicorn
sudo systemctl restart gunicorn
sudo systemctl status gunicorn
sudo systemctl restart gunicorn
sudo systemctl status gunicorn
sudo systemctl restart gunicorn
sudo systemctl status gunicorn
sudo systemctl restart gunicorn
sudo systemctl status gunicorn
sudo systemctl restart gunicorn
sudo systemctl status gunicorn
sudo systemctl restart gunicorn
sudo systemctl status gunicorn
sudo systemctl restart gunicorn
sudo systemctl status gunicorn
sudo systemctl restart gunicorn
sudo systemctl status gunicorn
sudo systemctl restart gunicorn
sudo systemctl status gunicorn
sudo systemctl restart gunicorn
sudo systemctl status gunicorn
sudo systemctl restart gunicorn
sudo systemctl status gunicorn
sudo systemctl restart gunicorn
sudo systemctl status gunicorn
sudo systemctl restart gunicorn
sudo systemctl status gunicorn
sudo systemctl restart gunicorn
sudo systemctl status gunicorn
sudo systemctl restart gunicorn
sudo systemctl status gunicorn
sudo systemctl restart gunicorn
sudo systemctl status gunicorn
sudo systemctl restart gunicorn
sudo systemctl status gunicorn
sudo systemctl restart gunicorn
sudo systemctl status gunicorn
sudo systemctl restart gunicorn
sudo systemctl status gunicorn
sudo systemctl restart gunicorn
sudo systemctl status gunicorn
sudo systemctl restart gunicorn
sudo systemctl status gunicorn
sudo systemctl restart gunicorn
sudo systemctl status gunicorn
sudo systemctl restart gunicorn
sudo systemctl status gunicorn
sudo systemctl restart gunicorn
sudo systemctl status gunicorn
sudo systemctl restart gunicorn
sudo systemctl status gunicorn
sudo systemctl restart gunicorn
sudo systemctl status gunicorn
sudo systemctl restart gunicorn
sudo systemctl status gunicorn
sudo systemctl restart gunicorn
sudo systemctl status gunicorn
sudo systemctl restart gunicorn
sudo systemctl status gunicorn
sudo systemctl restart gunicorn
sudo systemctl status gunicorn
sudo systemctl restart gunicorn
sudo systemctl status gunicorn
sudo systemctl restart gunicorn
sudo systemctl status gunicorn
sudo systemctl restart gunicorn
sudo systemctl status gunicorn
sudo systemctl restart gunicorn
sudo systemctl status gunicorn
sudo systemctl restart gunicorn
sudo systemctl status gunicorn
sudo systemctl restart gunicorn
sudo systemctl status gunicorn
sudo systemctl journal gunicorn
sudo  journalctl gunicorn
sudo  journalctl -u gunicorn
sudo systemctl restart gunicorn
sudo  journalctl -u gunicorn
sudo systemctl restart gunicorn
sudo  journalctl -u gunicorn
sudo systemctl restart gunicorn
sudo  journalctl -u gunicorn
sudo systemctl status gunicorn
sudo systemctl restart gunicorn
sudo systemctl status gunicorn
sudo systemctl restart gunicorn
sudo systemctl status gunicorn
sudo systemctl restart gunicorn
sudo systemctl status gunicorn
sudo systemctl restart gunicorn
sudo systemctl status gunicorn
sudo systemctl restart gunicorn
sudo systemctl status gunicorn
sudo systemctl restart gunicorn
sudo systemctl status gunicorn
sudo systemctl restart gunicorn
sudo systemctl status gunicorn
sudo systemctl restart gunicorn
sudo systemctl status gunicorn
sudo systemctl restart gunicorn
sudo  journalctl -u gunicorn
ls
cd ..
ls
cd smarthomeenv/
ls
cd bin/

cd guni
cd gunicorn
sudo nano gunicorn 
cd ..
ls
cd lib/
ls
cd ..
cd bin/

sudo systemctl restart gunicorn
sudo systemctl status gunicorn
sudo systemctl restart gunicorn
sudo systemctl status gunicorn
©
sudo systemctl status gunicorn
sudo systemctl restart gunicorn
sudo systemctl status gunicorn
sudo systemctl restart gunicorn
sudo systemctl status gunicorn
sudo systemctl restart gunicorn
sudo systemctl status gunicorn
reboot
sudo systemctl restart gunicorn
reboot
sudo systemctl status gunicorn
reboot
sudo reboot
sudo systemctl status gunicorn
sudo systemctl restart gunicorn
sudo systemctl status gunicorn
sudo systemctl restart gunicorn
sudo systemctl status gunicorn
sudo systemctl restart gunicorn
sudo systemctl status gunicorn
sudo systemctl restart gunicorn
sudo systemctl status gunicorn
sudo systemctl restart gunicorn
sudo systemctl status gunicorn
sudo systemctl restart gunicorn
sudo systemctl status gunicorn
sudo systemctl restart gunicorn
sudo systemctl status gunicorn
sudo systemctl restart gunicorn
sudo systemctl status gunicorn
sudo systemctl restart gunicorn
sudo systemctl status gunicorn
sudo systemctl restart gunicorn
sudo systemctl status gunicorn
sudo systemctl restart gunicorn
sudo systemctl status gunicorn
sudo systemctl restart gunicorn
sudo systemctl status gunicorn
sudo systemctl restart gunicorn
sudo systemctl status gunicorn
sudo systemctl restart gunicorn
sudo systemctl status gunicorn
sudo systemctl restart gunicorn
sudo systemctl status gunicorn
sudo systemctl restart gunicorn
sudo systemctl status gunicorn
sudo systemctl restart gunicorn
sudo systemctl status gunicorn
sudo systemctl restart gunicorn
sudo systemctl status gunicorn
sudo systemctl restart gunicorn
sudo systemctl status gunicorn
sudo systemctl restart gunicorn
sudo systemctl status gunicorn
sudo systemctl restart gunicorn
sudo systemctl status gunicorn
sudo systemctl restart gunicorn
sudo systemctl status gunicorn
sudo systemctl restart gunicorn
sudo systemctl status gunicorn
sudo systemctl restart gunicorn
sudo systemctl status gunicorn
sudo systemctl restart gunicorn
sudo systemctl status gunicorn
sudo systemctl restart gunicorn
sudo systemctl status gunicorn
sudo systemctl restart gunicorn
sudo systemctl status gunicorn
sudo systemctl restart gunicorn
sudo systemctl status gunicorn
sudo systemctl restart gunicorn
sudo systemctl status gunicorn
sudo systemctl restart gunicorn
sudo systemctl status gunicorn
sudo systemctl restart gunicorn
sudo systemctl status gunicorn
ls
git add .
git commit -m "turning on leds"
git push
sudo systemctl status gunicorn
sudo systemctl restart gunicorn
sudo systemctl status gunicorn
sudo journalctl gunicorn
sudo journalctl -u gunicorn
sudo systemctl restart gunicorn
sudo journalctl -u gunicorn
sudo systemctl restart gunicorn
sudo systemctl status gunicorn
sudo systemctl restart gunicorn
sudo systemctl status gunicorn
sudo systemctl restart gunicorn
sudo systemctl status gunicorn
sudo systemctl restart gunicorn
sudo systemctl status gunicorn
ls
cd ..
ls
smarthomeenv/source/bin activate
source smarthomeenv/bin/activate
ls
smarthome/manage.py makemigrations
python -m pip install Pillow
smarthome/manage.py makemigrations
smarthome/manage.py migrate
smarthome/manage.py collectstatic
sudo systemctl restart gunicorn
sudo systemctl status gunicorn
sudo systemctl restart gunicorn
sudo systemctl status gunicorn
sudo systemctl restart gunicorn
sudo systemctl status gunicorn
sudo systemctl restart gunicorn
sudo systemctl status gunicorn
smarthome/manage.py makemigrations
smarthome/manage.py migrate
sudo systemctl restart gunicorn
sudo systemctl status gunicorn
sudo systemctl restart gunicorn
sudo systemctl status gunicorn
sudo systemctl restart gunicorn
sudo systemctl status gunicorn
sudo systemctl restart gunicorn
sudo systemctl status gunicorn
sudo systemctl restart gunicorn
sudo systemctl status gunicorn
sudo systemctl restart gunicorn
ls
cd ..
ls
source smarthomeenv/bin/activate
ls
cd .
ls
cd smarthome
ls
cd ..
smarthome/manage.py makemigrations
smarthome/manage.py migrate
smarthome/manage.py collectstatic
sudo systemctl restart gunicorn
tesseract
sudo apt install tesseract-ocr
cd ..
ls
cd smarthome/
ls
git add .
deactivate
git add .
git commit -m "post photos"
git push
ls
source smarthomeenv/activate
source smarthomeenv/bin/activate
pip install opencv-python
pip install imutils
pip install numpy
pip install pytesseract
sudo systemctl restart gunicorn
sudo systemctl status gunicorn
sudo systemctl restart gunicorn
sudo systemctl status gunicorn
sudo systemctl restart gunicorn
sudo systemctl status gunicorn
sudo systemctl restart gunicorn
pip install opencv-python
sudo systemctl restart gunicorn
deactivate
pip install opencv-python
sudo systemctl restart gunicorn
source smarthomeenv/activate
source smarthomeenv/bin/activate
opencv-python-headless
pip install opencv-python-headless
sudo systemctl restart gunicorn
sudo systemctl status gunicorn
sudo systemctl restart gunicorn
sudo systemctl status gunicorn
sudo systemctl restart gunicorn
sudo systemctl status gunicorn
sudo systemctl restart gunicorn
sudo systemctl status gunicorn
sudo systemctl restart gunicorn
sudo systemctl status gunicorn
sudo systemctl restart gunicorn
sudo systemctl status gunicorn
sudo systemctl restart gunicorn
sudo systemctl status gunicorn
sudo systemctl restart gunicorn
sudo systemctl status gunicorn
sudo systemctl restart gunicorn
sudo systemctl status gunicorn
sudo systemctl restart gunicorn
sudo systemctl status gunicorn
sudo systemctl restart gunicorn
sudo systemctl status gunicorn
sudo systemctl restart gunicorn
sudo systemctl status gunicorn
sudo systemctl restart gunicorn
sudo systemctl status gunicorn
sudo systemctl restart gunicorn
sudo systemctl status gunicorn
sudo systemctl restart gunicorn
sudo systemctl status gunicorn
sudo systemctl restart gunicorn
sudo systemctl status gunicorn
sudo systemctl restart gunicorn
sudo systemctl status gunicorn
sudo systemctl restart gunicorn
sudo systemctl status gunicorn
sudo systemctl restart gunicorn
sudo systemctl status gunicorn
sudo systemctl restart gunicorn
sudo systemctl status gunicorn
sudo systemctl restart gunicorn
sudo systemctl status gunicorn
sudo systemctl restart gunicorn
sudo systemctl status gunicorn
sudo systemctl restart gunicorn
sudo systemctl status gunicorn
sudo systemctl restart gunicorn
sudo systemctl status gunicorn
sudo systemctl restart gunicorn
sudo systemctl status gunicorn
sudo systemctl restart gunicorn
pip install django-background-tasks
sudo systemctl restart gunicorn
pip install django-background-tasks
sudo systemctl restart gunicorn
sudo systemctl status gunicorn
sudo systemctl restart gunicorn
sudo systemctl status gunicorn
sudo systemctl restart gunicorn
sudo systemctl status gunicorn
sudo systemctl restart gunicorn
sudo systemctl status gunicorn
sudo systemctl restart gunicorn
sudo systemctl status gunicorn
sudo systemctl restart gunicorn
sudo systemctl status gunicorn
sudo systemctl restart gunicorn
sudo systemctl status gunicorn
sudo systemctl restart gunicorn
sudo systemctl status gunicorn
sudo systemctl restart gunicorn
sudo systemctl status gunicorn
sudo systemctl restart gunicorn
sudo systemctl status gunicorn
sudo systemctl restart gunicorn
sudo systemctl status gunicorn
sudo systemctl restart gunicorn
sudo systemctl status gunicorn
sudo systemctl restart gunicorn
sudo systemctl status gunicorn
sudo systemctl restart gunicorn
sudo systemctl status gunicorn
sudo systemctl restart gunicorn
deactivate
l
cd smarthome
ls
git add .
git commit -m "door open"
git push
sudo systemctl restart gunicorn
sudo postgreesql
psql
sudo netstat -tulpn | grep LISTEN
psql
python3 manage.py makemigrations
python3 manage.py createsuperuser
pip3 install django-countries
python3 manage.py makemigrations
ls
cd ..
ls
source smarthomeenv/source/activate
source smarthomeenv/source/bin/activate
source smarthomeenv/bin/activate
ls
\
sudo systemctl restart gunicorn
sudo systemctl status gunicorn
sudo journalctl -u gunicorn
sudo systemctl restart gunicorn
sudo journalctl -u gunicorn
sudo systemctl restart gunicorn
sudo systemctl status gunicorn
sudo systemctl restart gunicorn
sudo systemctl status gunicorn
sudo systemctl restart gunicorn
sudo systemctl status gunicorn
sudo systemctl restart gunicorn
sudo systemctl status gunicorn
ls
smarthome/manage.py makemigrations
sudo systemctl restart gunicorn
sudo systemctl status gunicorn
sudo systemctl restart gunicorn
sudo systemctl status gunicorn
python3 manage.py makemigrations
smarthome/manage.py manage.py makemigrations
smarthome/manage.py makemigrations
sudo systemctl restart gunicorn
sudo systemctl status gunicorn
sudo systemctl restart gunicorn
sudo systemctl status gunicorn
sudo systemctl restart gunicorn
sudo systemctl status gunicorn
sudo systemctl restart gunicorn
sudo systemctl status gunicorn
sudo systemctl restart gunicorn
sudo systemctl status gunicorn
sudo systemctl restart gunicorn
sudo systemctl status gunicorn
sudo systemctl restart gunicorn
sudo systemctl status gunicorn
sudo systemctl restart gunicorn
sudo systemctl status gunicorn
sudo systemctl restart gunicorn
sudo systemctl status gunicorn
sudo systemctl restart gunicorn
sudo systemctl status gunicorn
sudo systemctl restart gunicorn
sudo systemctl status gunicorn
sudo systemctl restart gunicorn
sudo systemctl status gunicorn
sudo systemctl restart gunicorn
sudo systemctl status gunicorn
smarthome/manage.py manage.py makemigrations
smarthome/manage.py makemigrations
sudo systemctl restart gunicorn
sudo systemctl status gunicorn
sudo systemctl restart gunicorn
sudo systemctl status gunicorn
sudo systemctl restart gunicorn
sudo systemctl status gunicorn
smarthome/manage.py makemigrations
sudo systemctl restart gunicorn
sudo systemctl status gunicorn
smarthome/manage.py makemigrations
sudo systemctl restart gunicorn
sudo systemctl status gunicorn
sudo systemctl restart gunicorn
smarthome/manage.py makemigrations
smarthome/manage.py migrate
Users.objects
sudo systemctl restart gunicorn
sudo systemctl status gunicorn
sudo systemctl restart gunicorn
sudo systemctl status gunicorn
sudo systemctl restart gunicorn
sudo systemctl status gunicorn
sudo systemctl restart gunicorn
sudo systemctl status gunicorn
sudo systemctl restart gunicorn
sudo systemctl status gunicorn
sudo systemctl restart gunicorn
sudo systemctl status gunicorn
smarthome/manage.py makemigrations
sudo systemctl restart gunicorn
sudo systemctl status gunicorn
smarthome/manage.py makemigrations
sudo systemctl restart gunicorn
sudo systemctl status gunicorn
sudo systemctl restart gunicorn
sudo systemctl status gunicorn
sudo systemctl restart gunicorn
sudo systemctl status gunicorn
sudo systemctl restart gunicorn
sudo systemctl status gunicorn
sudo systemctl restart gunicorn
sudo systemctl status gunicorn
smarthome/manage.py makemigrations
sudo systemctl restart gunicorn
smarthome/manage.py makemigrations
sudo systemctl status gunicorn
smarthome/manage.py makemigrations
sudo systemctl restart gunicorn
smarthome/manage.py makemigrations
smarthome/manage.py migrate´
smarthome/manage.py migrate
smarthome/manage.py makemigrations
sudo systemctl restart gunicorn
smarthome/manage.py migrate
sudo systemctl restart gunicorn
sudo systemctl status gunicorn
sudo systemctl restart gunicorn
sudo systemctl status gunicorn
sudo systemctl restart gunicorn
sudo systemctl status gunicorn
sudo systemctl restart gunicorn
sudo systemctl status gunicorn
smarthome/manage.py makemigrations
sudo systemctl restart gunicorn
sudo systemctl status gunicorn
sudo systemctl restart gunicorn
sudo systemctl status gunicorn
deactivate
git add .
git commit -m "groups"
git push
