#= require action_cable
#= require_self
#= require_tree ./services

App.cable = ActionCable.createConsumer()
