Rails.application.routes.draw do
  devise_for :users


  resources :posts


  get "up" => "rails/health#show", as: :rails_health_check



  resources :posts, only:[:new, :create, :index ]

   root "posts#index"
end
