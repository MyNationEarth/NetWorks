rendering
dragableHelperOn: html row: row
  "Hack to return clone while testing a custom function"

  | script |
  (script := html javascript)
    return:
      (script jQuery
        html: [ :helperHtml | 
          helperHtml div
            style: 'z-index: 9999;';
            class: 'cal-drop';
            with: [ self renderIconForRow: row index: nil on: helperHtml ] ]).
  ^ script asFunction