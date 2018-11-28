private
useDuring: aBlock
  "Make self current during aBlock"

  ^ [ NWCurrentOrganisationModel use: self during: aBlock ]
    ensure: [  ]