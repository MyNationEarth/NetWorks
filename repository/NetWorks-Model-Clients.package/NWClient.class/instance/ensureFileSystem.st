file system
ensureFileSystem
  "Create any directories that may need creating"

  super ensureFileSystem.
  self
    invoicesDirectory;
    projectsDirectory;
    commercialDirectory