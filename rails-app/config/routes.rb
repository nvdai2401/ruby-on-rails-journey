Rails.application.routes.draw do
  root 'pages#home'
  get 'about', controller: :about, action: :create
end
