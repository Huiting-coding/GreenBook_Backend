class Api::V1::RequestsController < Api::V1::BaseController

  def create
    @request = Request.new
    @item = Item.find(params[:item_id])
    @request.item = @item
    if @request.save
          @item.available = false
          render :show
          p"yes"
    else
          p "no"
    end
  end

  def show
    @request = Request.find(params[:id])
  end

end
