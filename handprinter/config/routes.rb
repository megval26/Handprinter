Rails.application.routes.draw do
  

    # Semi-static page routes
  get 'home', to: 'home#index', as: :home
  get 'home/about', to: 'home#about', as: :about
  get 'home/contact', to: 'home#contact', as: :contact
  get 'home/privacy', to: 'home#privacy', as: :privacy
  get 'home/search', to: 'home#search', as: :search

    # Authentication routes
  resources :sessions
  resources :users
  get 'users/new', to: 'users#new', as: :signup
  get 'user/edit', to: 'users#edit', as: :edit_current_user
  get 'login', to: 'sessions#new', as: :login
  get 'logout', to: 'sessions#destroy', as: :logout

  resources :model_inputs
  resources :model_inactives
  resources :model_votes
  resources :model_comments
  resources :model_inputs
  resources :inputs
  resources :sources
  resources :claims
  resources :models
  resources :action_idea_inactives
  resources :action_ideas
  resources :action_idea_votes
  resources :users
  resources :action_idea_comments

  # You can have the root of your site routed with 'root'
  root 'home#index'

end
