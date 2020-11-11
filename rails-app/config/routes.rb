Rails.application.routes.draw do
  resources :articles
  root 'pages#home'
  get 'about', controller: :about, action: :create
end
