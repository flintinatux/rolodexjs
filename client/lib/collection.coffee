m = require 'mithril'

Collection = (url) ->
  c = m.prop []

  c.clear = ->
    c []
    c

  c.load = ->
    m.request method: 'GET', url: c.url(), type: c.model()
      .then c
    c

  c.model = m.prop (data={}) ->
    model = {}
    for own key, val of data
      model[key] = m.prop val
    model

  c.remove = (model) ->
    c().splice c().indexOf(model), 1
    c

  # c.save = ->
  #   localforage.setItem(name, c()).catch (err) ->
  #     console.log err

  c.url = m.prop ''

  ['push', 'unshift'].forEach (method) ->
    c[method] = (data) ->
      c()[method] new c.model() data
      c

  c

module.exports = Collection
