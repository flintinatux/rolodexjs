Collection = require '../lib/collection'
Contact    = require '../models/contact'

contacts = new Collection()

contacts.url '/api/contacts'
contacts.model Contact

module.exports = window.contacts = contacts
