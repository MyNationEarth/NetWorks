Accessing
openProjects
  ^ projects select: [ :project | project status ~= 'Complete' ]