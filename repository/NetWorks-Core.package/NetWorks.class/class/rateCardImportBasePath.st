datateks
rateCardImportBasePath
  ^ (GsFile
    existsOnServer:
      '/opt/git/MyNationEarth/NetWorks/documents/Datateks/rateCards/')
    ifTrue: [ '/opt/git/MyNationEarth/NetWorks/documents/Datateks/rateCards/' ]
    ifFalse: [ '/opt/GsDevKit_home/server/stones/networks/logs/github-cache/MyNationEarth/NetWorks/documents/Datateks/rateCards/' ]