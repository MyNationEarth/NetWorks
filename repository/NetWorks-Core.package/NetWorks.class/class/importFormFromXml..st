forms
importFormFromXml: formXml
  | formReader savedDefinition application |
  formReader := OrbeonXPathFormReader for: formXml.
  application := OrbeonApplication
    applicationNamed: formReader getApplicationName.
  savedDefinition := OrbeonSavedFormDefinition
    newNamed: formReader getFormName
    inAppNamed: formReader getApplicationName.
  savedDefinition
    id: UUID new asString;
    version: 1;
    title: formReader getTitle;
    description: formReader getDescription;
    setXmlString: formXml;
    updateLastModifiedTime;
    yourself.	"here the <OrbeonPublishedFormDefinition> is created and associate to the receiver <savedDefinition>"
  savedDefinition
    addToCache;
    storeInApplication.
  application addSavedDefinition: savedDefinition.
  savedDefinition definition
    addToCache;
    publish.
  application addPublishedDefinition: savedDefinition definition.	"savedDefinition definition processXMLDefinitionFor: OrbeonXmlPath2017_2 new."
  ^ savedDefinition definition