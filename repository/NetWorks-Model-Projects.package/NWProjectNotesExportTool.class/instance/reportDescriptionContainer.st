export file
reportDescriptionContainer
  | template |
  template := NWNote new.
  ^ template projectTitleDescription , template referencedObjectTitleDescription
    , template referencedObjectClassLabelDescription
    , template dateAndTimeDescription , template userNameDescription
    , template titleDescription , template commentDescription