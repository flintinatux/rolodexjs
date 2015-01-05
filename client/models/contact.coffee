m = require 'mithril'

class Contact
  constructor: (data={}) ->
    @id   = m.prop data.id
    @name = m.prop data.name
    return

  active: ->
    m.route.param('id') is String @id()

  route: ->
    "/contacts/#{@id()}"

  url: ->
    "/api/contacts/#{@id()}"

module.exports = Contact
