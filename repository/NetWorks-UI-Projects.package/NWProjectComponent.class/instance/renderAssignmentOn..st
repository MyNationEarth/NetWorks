rendering
renderAssignmentOn: canvas
  canvas
    render:
      (self
        componentAt: #'assignment'
        ifAbsentPut: [ 
          NWAssignmentComponent new
            project: self model;
            yourself ])