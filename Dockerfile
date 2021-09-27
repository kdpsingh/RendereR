FROM opencpu/base

RUN R -e 'devtools::install_github("rwebapps/nabel")'

RUN \
  echo 'Redirect /index.html /ocpu/apps/kdpsingh/RendereR/www' > /etc/apache2/sites-enabled/app.conf
