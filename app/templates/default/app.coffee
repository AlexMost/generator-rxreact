Rx = require 'rx'
React = require 'react'
<%= moduleName %>View = React.createFactory(require './templates/default/view')
<%= moduleName %>Storage = require './templates/default/storage'
dispatchActions = require './templates/default/dispatcher'


initApp = (mountNode) ->
    subject = new Rx.Subject()
    store = new HelloStorage()

    componentProps = store.getViewState()
    componentProps.eventStream = subject

    view = React.render <%= moduleName %>View(componentProps), mountNode

    dispatchActions(view, subject, store)


module.exports = initApp