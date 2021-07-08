module.exports = [
  {
    type: 'input',
    name: 'name',
    message: "What's the name of the new component?"
  },
  {
    type: 'input',
    name: 'folder',
    message: "Should this component be added to a sub-folder?"
  },
  {
    type: 'confirm',
    name: 'axios',
    message: "Do you need Axios in your new component?"
  }
]
