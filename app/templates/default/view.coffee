React = require 'react'
{div, button, h1} = React.DOM


<%= moduleName %>View = React.createClass

    incrementClickCount: ->
        @props.eventStream.onNext
            action: "increment_click_count"

    render: ->
        div null,
            div null, "<%= moduleName %>"
            div null, "You clicked #{@props.clicksCount} times"
            button
                onClick: @incrementClickCount
                "Click"


module.exports = HelloView

