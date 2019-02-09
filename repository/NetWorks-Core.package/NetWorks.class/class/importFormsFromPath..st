forms
importFormsFromPath: path
  | formXmlPaths libraryPaths formXmlStrings |
  formXmlPaths := (GsFile contentsOfDirectory: path onClient: false)
    select: [ :filePath | filePath endsWith: '.xml' ].
  libraryPaths := formXmlPaths
    removeAllSuchThat: [ :formXmlPath | formXmlPath endsWith: 'library.xml' ].
  formXmlPaths := libraryPaths , formXmlPaths.
  formXmlStrings := formXmlPaths
    collect: [ :formPath | 
      | file xmlString |
      xmlString := (file := GsFile openRead: formPath) contents.
      file close.
      xmlString ].
  ^ formXmlStrings collect: [ :formXml | self importFormFromXml: formXml ]