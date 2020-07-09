Accessing
openProjects
  | closedStatus |
  closedStatus := self lists at: #'closedStatus'.
  ^ projects select: [ :project | (closedStatus includes: project status) not ]