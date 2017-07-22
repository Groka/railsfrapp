Rails.application.routes.draw do

  get 'sidebar/show'

  get 'sidebar/userProfile'

  get 'sidebar/companyProfile'

  get 'sidebar/eventProfile'

  get 'welcome/index'

  resources :comments
  resources :deleted_companies
  resources :posts
  resources :reports
  resources :companies
  resources :statuses
  resources :members
  resources :events
  resources :activities
  resources :member_types

  root to: 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
