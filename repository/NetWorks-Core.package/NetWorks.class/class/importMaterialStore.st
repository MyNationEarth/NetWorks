utilities
importMaterialStore
  | materialStore filePath importer |
  materialStore := NetWorks instance organisationModels values first
    materialStores detect: [ :ms | ms title = 'Datateks - Sydney new' ].
  filePath := '/opt/git/MyNationEarth/NetWorks/documents/Datateks/SOH 20200515.csv'.
  importer := NWMaterialStoreImportTool new
    materialStore: materialStore;
    rawData: (GsFile openReadOnServer: filePath) contentsOfEntireFile;
    yourself.
  importer import