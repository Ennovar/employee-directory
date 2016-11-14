Rails.application.routes.draw do
  root 'employees#index'
  get 'search/skills'
  post 'search', to: 'search#search'

  resources :skills
  resources :employees
  resources :buisness_units
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
