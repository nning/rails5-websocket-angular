class CompaniesController
  constructor: ($scope, $http, CompanyUpdatesService) ->
    CompanyUpdatesService.onUpdate = (company) ->
      console.log(company)

      i = null
      $.each $scope.companies, (k, v) ->
        i = k if v.id == company.id

      $scope.$apply ->
        $scope.companies[i] = company

    $http.get('companies.json').success (data) ->
      $scope.companies = data


App.controller 'CompaniesController', [
  '$scope',
  '$http',
  'CompanyUpdatesService',
  CompaniesController
]
