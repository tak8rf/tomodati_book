Rails.application.routes.draw do
  root to: 'ssesion#new'
  resources :feeds
  resources :contacts
  get 'sessions/new'
  resources :sessions, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create, :show]
  resources :blogs do
  collection do
    post :confirm
  end
end
mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?
end
