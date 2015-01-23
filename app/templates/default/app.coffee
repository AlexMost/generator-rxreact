Rx = require 'rx'
React = require 'react'
<%= moduleName %>View = React.createFactory(require './view/view')
<%= moduleName %>Storage = require './storage'
dispatchActions = require './dispatcher'


initApp = (mountNode) ->
    subject = new Rx.Subject()
    store = new <%= moduleName %>torage()
    view = React.render <%= moduleName %>View({eventStream: subject}), mountNode
    dispatchActions(view, subject, store)


module.exports = initApp