class PlayerController < ApplicationController
  def index
    if user_signed_in?
      #他のコントローラーのビューファイルを呼び出すためには、templateオプションを利用
      render template: "player/index" # ログイン済みのトップ画面
    else 
      render 'index' # ログインしてないトップ画面
    end
  end







end
