class ItemsController < ApplicationController

def show
  @item = Item.find(params[:id]) #IDでデータベースを検索
end

def index
  @items = Item.all

end

end
