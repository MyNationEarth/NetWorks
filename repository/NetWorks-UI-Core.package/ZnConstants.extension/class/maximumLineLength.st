*NetWorks-UI-Core
maximumLineLength
  "WARNING: Overridden to support large uploads from SeasideElFinder. This may not be a good idea!
	Return the maximum line length to accept.
	Used by ZnLineReader and thus for reading request/status lines as well as headers.
	This helps to protect us from malicious content."

  ^ 8192