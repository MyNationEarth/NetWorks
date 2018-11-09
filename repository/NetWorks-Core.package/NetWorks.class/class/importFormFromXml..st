forms
importFormFromXml: formXml
  | formReader |
  formReader := OrbeonXPathFormReader for: formXml.
  ^ (OrbeonPublishedFormDefinition
    app: formReader getApplicationName
    form: formReader getFormName)
    xmlString: formXml;
    id: UUID new asString;
    title: formReader getTitle;
    processXMLDefinitionFor: OrbeonXmlPath2017_2 new;
    publish;
    yourself