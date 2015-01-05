m = require 'mithril'

Contacts = require '../collections/contacts'

viewmodel = ->
  vm = {}

  vm.contacts = Contacts.load()

  vm

module.exports = viewmodel
