production environment setup
setupOrbeon
  "Setup tomcal to store oberon forms in GemStone"

  System
    performOnServer:
      'ln -s /opt/git/MyNationEarth/NetWorks/orbeon/properties-local.xml /opt/tomcat/webapps/orbeon/WEB-INF/resoures/config/'.
  System
    performOnServer:
      'mkdir /opt/orbeon-files && pushd /opt/orbeon-files && mkdir temp && mkdir drafts && mkdir instances && mkdir definitions && cd definitions && mkdir saved && mkdir published && popd'