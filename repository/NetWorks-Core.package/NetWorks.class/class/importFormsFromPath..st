forms
importFormsFromPath: path
  | formXmlStrings |
  formXmlStrings := ((GsFile contentsOfDirectory: path onClient: true)
    select: [ :filePath | filePath endsWith: '.xml' ])
    collect: [ :formPath | 
      | file xmlString |
      xmlString := (file := GsFile openRead: formPath) contents.
      file close.
      xmlString ].
  ^ formXmlStrings collect: [ :formXml | self importFormFromXml: formXml ]