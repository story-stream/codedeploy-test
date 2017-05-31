cd /srv/codedeploydemo/

VENV_PATH=/srv/codedeploydemo/venv/bin

sudo $VENV_PATH/pip install -r code/requirements.txt
npm install

chown www-data:www-data -R code

# Check for existance of nginx symlink
file=/etc/nginx/sites-enabled/codedeploydemo
if [ ! \( -e "${file}" \) ]
then
     sudo ln -s /etc/nginx/sites-available/codedeploydemo /etc/nginx/sites-enabled/codedeploydemo
fi
