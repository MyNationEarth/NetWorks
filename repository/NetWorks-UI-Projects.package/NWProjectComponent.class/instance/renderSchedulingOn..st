rendering
renderSchedulingOn: canvas
  canvas
    render:
      (self
        componentAt: #'jobSchedule'
        ifAbsentPut: [ 
          NWSchedulingComponent new
            project: self model;
            yourself ])