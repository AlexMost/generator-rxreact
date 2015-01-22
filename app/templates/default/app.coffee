Rx = require 'rx'
React = require 'react'
<%= moduleName %>View = React.createFactory(require './view/view')
<%= moduleName %>Storage = require './storage'
dispatchActions = require './dispatcher'


initApp = (mountNode) ->
    subject = new Rx.Subject()
    store = new HelloStorage()

    componentProps = store.getViewState()
    componentProps.eventStream = subject

    view = React.render <%= moduleName %>View(componentProps), mountNode

    dispatchActions(view, subject, store)


module.exports = initApp