Rails.application.routes.draw do

  devise_scope :user do

    get '/users', to: 'devise/registrations#new'
    get '/users/password', to: 'devise/passwords#new'
    get '/users/sign_out' => 'devise/sessions#destroy'
  end

  devise_for :users

  resources :posts, only:[:new, :create, :index ]


  root "posts#index"

  get "up" => "rails/health#show", as: :rails_health_check

end
