Rails.application.routes.draw do
  resources :newsletters
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
   root "newsletters#index"
end
