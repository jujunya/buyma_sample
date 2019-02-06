class ItemsController < ApplicationController
  before_action :set_shop, :set_size
  
  def index
    
  end
  
  def new
#    dropzone確認のための仮入力
    @image = Image.new
    
    @categories = Category.all
    @item = Item.new
    @item.images.build
    render layout: 'mypage'
  end
  
  def create

    item = Item.new(item_params)
    
    if item.save
      redirect_to new_shop_item_path, notice:"成功"
    else
      redirect_to new_shop_item_path, notice:"失敗"
    end
    
  end
  
  private
  
  def item_params
    
    params.require(:item).permit(:name, :price, :stock, :item_description, :category_id, size_ids: [], images_attributes: [:name]).merge(item_num: 10, shop_id: 1)
  
  end
  
  def set_shop
    @shop = Shop.find(1)
  end
  
  def set_size
    @sizes = Size.all
  end
  
end
