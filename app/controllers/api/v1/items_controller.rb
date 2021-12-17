class Api::V1::ItemsController < Api::V1::BaseController
    before_action :find_item, only: %i[show destroy]

    def index
      @items = Item.all
    end

    def create
      p "create1"
      p permitted_params
      @item = Item.new(permitted_params)
      p "item", @item
      # we need `user_id` to associate review with corresponding user
      @item.user = current_user
      p "fetch user", @item
      @item.save!
      p "save", @item
      render json: @item
    end

    def show

    end


    private

    def find_item
      @item = Item.find(params[:id])
    end


    def permitted_params
      p "permited params", params
      params.require(:item).permit(:name, :description, :category, :location)
    end

end
