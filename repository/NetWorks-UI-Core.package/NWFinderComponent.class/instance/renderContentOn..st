rendering
renderContentOn: canvas
  canvas div script: (self elFinderScriptOn: canvas).
  canvas document
    addLoadScript:
      ((canvas jQuery: '.elfinder-button-search input')
        onKeyPress:
          (JSStream on: 'if(event.which=="13"){event.preventDefault()}'))