class Api::V1::RequestsController < Api::V1::BaseController

  def create
    @request = Request.new
    @item = Item.find(params[:item_id])
    @request.item = @item
    @request.user = current_user
    if @request.save!
          @item.available = false
          render json: {message: "request created"}
    else
          p "no"
          render json: {message: "Error"}
    end
  end

  def show
    @request = Request.find(params[:id])
  end

end
