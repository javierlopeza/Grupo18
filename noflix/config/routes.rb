Rails.application.routes.draw do
  resources :categories
  resources :tv_shows
  resources :subtitles
  resources :reviews
  resources :directors
  resources :actors
  resources :episodes do
      get :watch, on: :member
      get :list_watched, on: :member
  end
  resources :seasons
  resources :articles
  # registrations para agregar nombre al registro de usuarios
  devise_for :users, :controllers => { registrations: 'registrations', omniauth_callbacks: 'omniauth_callbacks' }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "home#index"
  # Admin Dashboard Index
  resources :administrators do
      get :list_users, on: :member
      get :set_admin, on: :member
      get :remove_admin, on: :member
  end
  # Parents Dashboard Index
  resources :parents do
      get :new_kid, on: :member
      post :create_kid, on: :member
      get :save_blocked, on: :member
  end
end
