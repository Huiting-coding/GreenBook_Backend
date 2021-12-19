class Api::V1::ItemsController < Api::V1::BaseController
    before_action :find_item, only: %i[show]

    def index
      @items = Item.all
    end

    def create
      @item = Item.new(permitted_params)
      # we need `user_id` to associate review with corresponding user
      @item.user = current_user
      @item.save!
      render json: @item
    end

    def show
      @related_items = @item.find_related_tags
    end


    private

    def find_item
      @item = Item.find(params[:id])
    end


    def permitted_params
      params.require(:item).permit(:name, :description, :category, :location, :available, :tag_list)
    end

end
