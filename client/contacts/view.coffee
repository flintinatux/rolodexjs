m = require 'mithril'

module.exports = (vm) ->
  [
    m '.new-wrapper', [
      m 'button.new', 'New contact'
    ]

    if vm.contacts().length
      m 'ul.contacts', vm.contacts().map (contact) ->
        m "li.card",
          class: if contact.active() then 'active' else ''
          onclick: -> m.route contact.route()
        , [
          m 'i.avatar'
          m 'span.name', contact.name()
          m 'i.arrow'
        ]
  ]

