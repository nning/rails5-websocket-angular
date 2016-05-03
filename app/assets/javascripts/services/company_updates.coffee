class CompanyUpdatesService
  constructor: ->
    @onUpdate = -> {}

    App.cable.subscriptions.create 'CompanyUpdatesChannel',
      received: (company) =>
        @onUpdate(company)


App.service 'CompanyUpdatesService', [
  CompanyUpdatesService
]
