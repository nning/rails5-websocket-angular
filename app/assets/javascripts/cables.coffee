#= require cable
#= require_self
#= require_tree ./services

App.cable = Cable.createConsumer('ws://' + window.location.host + '/websocket')
