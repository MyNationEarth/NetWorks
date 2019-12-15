Updating
projects: newValue
  | newProjects |
  "Find any new projects and add them to the list"
  newProjects := newValue difference: projects.
  projects addAll: newProjects