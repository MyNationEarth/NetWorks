accessing
panels
  "Answer the subset of panels the current user can access"

  ^ super panels
    select: [ :panel | panel canBeAccessedByUser: self session user ]