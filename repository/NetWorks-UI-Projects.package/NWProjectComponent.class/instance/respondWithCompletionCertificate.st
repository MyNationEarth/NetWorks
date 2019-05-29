templates
respondWithCompletionCertificate
  | pathToTemplate templateDocument finalDocument context file |
  context := Dictionary new.
  pathToTemplate := self templateBasePath
    , 'MWA A417 Request for Completion.rtfd'.
  templateDocument := GRPlatform current
    contentsOfFile: pathToTemplate
    binary: false.
  finalDocument := (MustacheTemplate on: templateDocument) value: context.
  file := WAFile new
    fileName:
        'CompletionCertificate-' , DateAndTime now asRFC1123String , '.docx';
    contentType: (WAMimeType fromString: 'application/vnd.ms-word');
    contents: finalDocument;
    yourself.
  self requestContext
    respond: [ :response | 
      response
        contentType: file contentType;
        document: file rawContents asString;
        attachmentWithFileName: file fileName ]