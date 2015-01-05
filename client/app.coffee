window.m = require 'mithril'
contacts = require './contacts'
routes   = require '../common/routes'

m.route.mode = 'pathname'

m.route document.getElementById('page'), '/contacts/1', routes

m.module document.getElementById('sidebar'), contacts

