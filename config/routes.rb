Bouncer::Application.routes.draw do
  namespace :api do
    resources :users
    resources :sessions
  end
end
