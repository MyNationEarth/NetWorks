Importing
buildMaterials
  | materials |
  materials := (NetWorks instance organisationModels at: #'datateks.com.au')
    materials.
  (rows copyFrom: 2 to: rows size)
    do: [ :row | 
      materials
        add:
          (NWMaterial new
            title: (row at: #'title');
            comment: (row at: #'comment');
            yourself) ]