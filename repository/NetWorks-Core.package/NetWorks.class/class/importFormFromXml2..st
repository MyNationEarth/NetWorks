forms
importFormFromXml2: formXml
  | formReader savedDefinition |
  formReader := OrbeonXPathFormReader for: formXml.
  savedDefinition := OrbeonSavedFormDefinition
    app: formReader getApplicationName
    form: formReader getFormName.
  savedDefinition
    id: UUID new asString;
    version: 1;
    title: formReader getTitle;
    description: formReader getDescription;
    setXmlString: formXml;
    updateLastModifiedTime;
    yourself.	"here the <OrbeonPublishedFormDefinition> is created and associate to the receiver <savedDefinition>"
  savedDefinition definition
    processXMLDefinitionFor: OrbeonXmlPath2017_2 new;
    publish.	"savedDefinition storeInApplication"
  savedDefinition definition