Rails.application.routes.draw do
  devise_for :users

  root to: 'player#index'

  #user登録情報編集
  # 1つのユーザーにたくさんのPlayerが登録されている、というネスト
  resource :users, only: [:edit, :update, :destroy]
  resources :player, only: [:new, :create, :edit, :update]
end
