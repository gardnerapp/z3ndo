Rails.application.routes.draw do
  root 'root#root'

  resources :zones do
    resources :devices
  end

  resources :networks
end
