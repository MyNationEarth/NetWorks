Updating
projects: newValue
  | newProjects removedProjects |
  "Find any new projects"
  newProjects := newValue difference: projects.
  removedProjects := projects difference: newValue.
  projects addAll: newProjects.
  projects removeAll: removedProjects