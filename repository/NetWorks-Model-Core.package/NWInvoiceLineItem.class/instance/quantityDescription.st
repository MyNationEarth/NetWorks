descriptions
quantityDescription
  <magritteDescription>
  | description |
  description := MANumberDescription new
    accessor: #'quantity';
    label: 'Design Quantity';
    priority: 240;
    propertyAt: #'icon' put: #'bullseye';
    yourself.
  ^ description