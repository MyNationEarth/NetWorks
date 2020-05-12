rendering
renderBreadcrumbItem: panel on: canvas
  canvas listItem
    class: 'active' if: panel == self;
    with: [ 
          canvas anchor
            callback: [ (self crumbs first at: #'presenter') answer ];
            with: [ 
                  self renderIcon: panel icon color: panel iconColor on: canvas.
                  self
                    renderTemplate: [ :html :contentBlock | 
                      canvas span
                        with: [ 
                          canvas space.
                          contentBlock value: html ] ]
                    ifValueFromObjectOrBlock: panel label
                    on: canvas ] ]