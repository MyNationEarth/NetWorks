rendering
renderDescriptionsWithLabels: labels on: canvas
  NWFormRenderer
    component: self
    description:
      (self magritteDescription
        select: [ :desc | 
          (labels includes: desc label)
            or: [ labels includes: desc accessor readSelector ] ])
    on: canvas