Updating
jobs: newValue
  | newJobs removedJobs |
  "Find any new Jobs"
  newJobs := newValue difference: jobs.
  removedJobs := jobs difference: newValue.
  jobs addAll: newJobs.
  jobs removeAll: removedJobs