searching
searchDescription
  "Answer a MADescription used for matching text against this object"

  ^ self magritteDescription
    select: [ :desc | 
      {MAStringDescription.
      MAMemoDescription.
      MADateDescription.
      MANumberDescription} includes: desc class ]