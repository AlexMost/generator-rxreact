Rx = require 'rx'


getViewState = (store) ->
    clicksCount: store.getClicksCount()


dispatchActions = (view, eventStream, store) ->
    incrementClickCountAction = eventStream
        .filter(({action}) -> action is "increment_click_count")
        .do(-> store.incrementClicksCount())

    Rx.Observable.merge(
        incrementClickCountAction
        # some more actions here for updating view ...

    ).subscribe(
        -> view.setProps getViewState(store)
        (err) ->
            console.error? err)


module.exports = dispatchActions