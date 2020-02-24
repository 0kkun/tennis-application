Rails.application.routes.draw do
  devise_for :users

  root to: 'player#index'

  #user登録情報編集
  # 1つのユーザーにたくさんのPlayerが登録されている、というネスト
  resource :user, only: [:index, :edit, :update, :destroy]

end
