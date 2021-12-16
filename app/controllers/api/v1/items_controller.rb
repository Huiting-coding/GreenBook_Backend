class Api::V1::ItemsController < Api::V1::BaseController
    before_action :find_item, only: %i[show destroy]

    def index
      @items = Item.all
    end

    def create
      @item = Item.new(permitted_params)
      
      # we need `user_id` to associate review with corresponding user
      @user = User.find(params[:user_id])
      @item.user = @user
      @item.save
    end

    def show

    end


    private

    def find_item
      @item = Item.find(params[:id])
    end


    def permitted_params
      params.require(:item).permit(:name, :description, :category, :location)
    end

end
