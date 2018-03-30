Rails.application.routes.draw do
  scope '/admin' do
    devise_for :admins, path: '/'
  end
  devise_for :users

  root 'pages#dashboard'

  resources :vehicles, only: :index

  namespace :admin do
    resources :vehicles
  end
end
