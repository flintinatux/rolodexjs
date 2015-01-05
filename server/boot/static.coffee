loopback = require 'loopback'

module.exports = (app) ->
  app.use loopback.static 'public'
