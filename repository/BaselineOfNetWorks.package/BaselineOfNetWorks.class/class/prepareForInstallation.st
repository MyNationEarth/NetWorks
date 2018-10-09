production environment setup
prepareForInstallation
  "Setup a unix environment to support NetWorks"

  "Highcharts must be downloaded independently since it's so big
   issue 482: https://github.com/brunobuzzi/BpmFlow/issues/482)"

  System
    performOnServer:
      'mkdir -p /opt/git/brunobuzzi && pushd /opt/git/brunobuzzi && git clone git@github.com:brunobuzzi/HighchartsSt.git && cd HighchartsSt && git checkout v6.0.1 && popd'