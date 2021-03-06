Rails.application.routes.draw do

  devise_for :users
  root 'static_pages#home'
  get 'static_pages/home'

  get 'static_pages/help'

  get 'static_pages/about'

  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
