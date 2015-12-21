#= require action_cable
#= require_self
#= require_tree ./services

App.cable = ActionCable.createConsumer('ws://' + window.location.host + '/websocket')
