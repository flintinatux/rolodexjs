debug  = require('debug')('boot:routes')
routes = require '../../common/routes'

module.exports = (app) ->
  router = app.loopback.Router()

  for route, module of routes
    debug "Building route: #{route}"
    router.get route, (req, res) ->
      res.sendFile 'index.html', root: 'public'

  app.use router
