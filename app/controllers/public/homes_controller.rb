class Public::HomesController < ApplicationController
  #ログインしてない場合はサインインにリダイレクト
  before_action :authenticate_customer!, except: [:top, :about]
  
  def top
    @items = Item.order('id DESC').limit(4)
  end
  
end
