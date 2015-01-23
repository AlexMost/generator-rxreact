class <%= moduleName %>Storage
    constructor: ->
        @clicksCount = 0

    incrementClicksCount: ->
        @clicksCount += 1

module.exports = <%= moduleName %>Storage