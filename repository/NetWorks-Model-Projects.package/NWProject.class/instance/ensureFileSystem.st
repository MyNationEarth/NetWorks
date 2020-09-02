file system
ensureFileSystem
  "Create any directories that may need creating"

  super ensureFileSystem.
  self
    defectsDirectory;
    constructionDirectory;
    constructionQualityDirectory