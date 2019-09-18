columns
addColumnDescription: aDescription
  | columm |
  ^ self
    addColumn:
      (aDescription reportColumnClass new
        magritteDescription: aDescription;
        yourself)