Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :companies, only: :index
  resource :company, only: :show

  get '/cable', to: ActionCable.server

  root to: 'companies#index'
end
