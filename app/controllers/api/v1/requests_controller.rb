class Api::V1::RequestsController < Api::V1::BaseController

  # def index
  #   @requests = request.all
  # end

  def create
    @item = Item.find(params[:item_id])
    @request.item = @item
    @request = Request.Create(user: current_user, item: @item)
  end


  def show
    @request = Request.find(params[:id])
  end

end
