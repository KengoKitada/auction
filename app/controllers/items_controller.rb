class ItemsController < ApplicationController

def show
  @item = Item.find(params[:id]) #IDでデータベースを検索
end

end
