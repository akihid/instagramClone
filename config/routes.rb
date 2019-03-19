Rails.application.routes.draw do
  resources :users
  resources :sessions , only:[:new , :create , :destroy]
  resources :profiles , only:[:show ,:new , :create , :edit ,:update]
end
