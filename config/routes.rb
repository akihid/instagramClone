Rails.application.routes.draw do
  root 'users#new'
  resources :users , only:[:new , :create , :edit , :update , :show]
  resources :sessions , only:[:new , :create , :destroy]
  resources :posts do
    collection do
      post :confirm
    end
  end
  resources :favorites , only:[:create , :destroy ,:index]
  mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?
end
