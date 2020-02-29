Rails.application.routes.draw do
  resources :questions, only: [:show, :create, :new, :index] do
  	resources :answers
  end

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'questions#index'

   resources :relationships,       only: [:create, :destroy]
end
