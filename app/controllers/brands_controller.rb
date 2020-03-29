class BrandsController < ApplicationController

  def show
    # @brands = Brand.all
    # @user = User.where(id: 1)
    # @favorite_brand = BrandUser.where("user_id = ?", current_user)
  end

  def create
    @user_id = session[:id] #ログインしたユーザのID
    @brand_id = Brand.find(params[:id]).id #特定の選手のID
    #player_idに@player_id、user_idに@user_idを入れて、Favoriteモデルに新しいオブジェクトを作る
    @brand_user = BrandUser.new(brand_id: @brand_id, user_id: current_user.id)
    if @brand_user.save
      #保存に成功した場合、選手一覧画面に戻る
      redirect_to players_path, notice: 'ブランドを登録しました'
    end
  end




end
