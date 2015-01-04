_       = require 'lodash'
debug   = require('debug')('boot:seeds')
request = require 'request'

seedUrl = 'https://gist.githubusercontent.com/mikeolivieri/9222832/raw/ad32c0ad6630d49374b29f23ddf7d1fa2b55f45a/articulate-data'

module.exports = (app) ->
  request seedUrl, (err, response, body) ->
    throw err if err
    debug response

    contacts = JSON.parse body
    Contact  = app.models.contact

    contacts.forEach (contactData) ->
      Contact.create contactData, (err, contact) ->
        throw err if err
        debug contact
