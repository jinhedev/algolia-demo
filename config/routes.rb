Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/search', to: 'application#search'
  get '/users/search', to: 'users#search'
  get '/champions/search', to: 'champions#search'

  resources :users do
    resources :champions
  end
end
