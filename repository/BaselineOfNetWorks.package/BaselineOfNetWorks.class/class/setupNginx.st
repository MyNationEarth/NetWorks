production environment setup
setupNginx
  "Install the nginx conf for GsDevKit"

  System
    performOnServer:
      'ln -s /opt/git/MyNationEarth/NetWorks/nginx/gsDevKit.conf /etc/nginx/sites-enabled'