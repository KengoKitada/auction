class ItemsController < ApplicationController

def new
  @item = Item.new
end

def show
  @item = Item.find(params[:id]) #IDでデータベースを検索
end

def index
  @items = Item.all
end

def create
  # formからデータ受け取る
  @item = Item.new(item_params)
  # これを保存する
  @item.save
  #show.html.erbに飛ばす
  redirect_to "/items/#{@item.id}"
end

def edit
  @item = Item.find(params[:id])
end

def update
#findでidを検索
@item = Item.find(params[:id])
#update_attributesメソッドで上書き保存
@item.update_attributes(item_params)
#redirect_to
redirect_to"/items/#{@item.id}"
end


private


def item_params
  # params.require(:key).parmit(:filter)
    params.require(:item).permit(
      :name,
      :description,
      :seller_id,
      :price,
      :image_url
)
end



end
