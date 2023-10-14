Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :users, only: [:show]

  resources :perfumes
  #root 'perfumes#index'

  resources :tweets do
    resources :likes, only: [:create, :destroy]

    resources :comments, only: [:create]

  end

  resources :users
  #root 'users#index'

  root 'tweets#index'

  get 'posts/girly' => 'posts#girly'
  get 'posts/casual' => 'posts#casual'
  get 'posts/kireime' => 'posts#kireime'
  get 'posts/mode' => 'posts#mode'
  get 'posts/vintage' => 'posts#vintage'

  resources :perfumes

end
