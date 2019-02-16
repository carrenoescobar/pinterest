Rails.application.routes.draw do
  devise_for :users
  resources :pins
  get 'welcome/index'
  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'mypins' => 'pins#mypins'
  get 'pinsof/:user_id' => 'pins#pinsof', :as => "pinsof"

  post 'pins/:id/like', as: 'pins_like', to: 'pins#like'

end
