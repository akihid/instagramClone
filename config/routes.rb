Rails.application.routes.draw do
  root 'users#new'
  resources :users
  resources :sessions , only:[:new , :create , :destroy]
  resources :posts do
    collection do
      post :confirm
    end
  end
  resources :favorites , only:[:create , :destroy ,:index]
end
