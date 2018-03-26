Rails.application.routes.draw do
  devise_for :users

  namespace :admin do
    resources :vehicles
  end

  scope '/admin' do
    devise_for :admins, path: '/'
  end
end
