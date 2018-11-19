as yet unclassified
importFile
  "Answer the a test rate card csv file"

  ^ GsFile
    openRead:
      '/opt/git/MyNationEarth/NetWorks/testResources/Metro Combined Rates.csv'