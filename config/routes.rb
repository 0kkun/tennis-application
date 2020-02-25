Rails.application.routes.draw do
  devise_for :users

  root to: 'top#index'
  resource :sessions, only: [:new, :create, :destroy]
  resources :users

  resources :players do
    member do #プレイヤーの一覧画面からお気に入り登録をする
      post "add", to: "favorites#create"
    end
  end
  #個人ページからお気に入りを削除する
  resources :favorites, only: [:destroy]

end
