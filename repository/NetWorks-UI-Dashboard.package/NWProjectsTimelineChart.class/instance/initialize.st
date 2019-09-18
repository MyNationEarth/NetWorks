initialisation
initialize
  super initialize.
  chartData := Dictionary new.
  self
    addDecoration:
      (AdminLTEBoxDecoration new
        label: 'Projects Timeline';
        icon: #'briefcase';
        yourself)