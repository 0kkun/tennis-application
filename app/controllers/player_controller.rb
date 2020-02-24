class PlayerController < ApplicationController

  def index
  end

  def new
    @player = Player.all
  end





end
