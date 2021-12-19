class Api::V1::RequestsController < Api::V1::BaseController

  def create
    @request = Request.new
    @item = Item.find(params[:item_id])
    @request.item = @item
    @request.user = current_user
    if @request.save!
          render json: {message: "request created"}
          p"yes"
    else
          p "no"
          render json: {message: "Error"}
    end
  end

  def show
    @request = Request.find(params[:id])
  end

end
