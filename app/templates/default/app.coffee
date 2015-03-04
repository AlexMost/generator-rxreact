Rx = require 'rx'
React = require 'react'
<%= moduleName %>View = React.createFactory(require './view/view')
<%= moduleName %>Storage = require './storage'
dispatchActions = require './dispatcher'


initApp = (mountNode) ->
    eventStream = new Rx.Subject()
    store = new <%= moduleName %>Storage()
    view = React.render <%= moduleName %>View({eventStream}), mountNode
    dispatchActions(view, eventStream, store)


module.exports = initApp