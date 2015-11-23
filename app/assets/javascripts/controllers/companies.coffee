class CompaniesController
  constructor: ($scope, $http) ->
    $http.get('companies.json').success (data) ->
      $scope.companies = data


App.controller 'CompaniesController', [
  '$scope',
  '$http',
  CompaniesController
]
