class Api::V1::ItemsController < Api::V1::BaseController
    before_action :find_item, only: %i[show destroy]

    def index
      @items = Item.all
    end

    def create
      @item = Item.create(permitted_params)
    end

    def show

    end


    private

    def find_item
      @item = Item.find(params[:id])
    end


    def permitted_params
      params.require(:item).permit(:name, :description, :category, :location, :user)
    end

end
