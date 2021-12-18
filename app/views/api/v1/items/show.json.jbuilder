json.items do
    json.array! @items do |item|
        json.id item.id
        json.name item.name
        json.category item.category
        json.description item.description
        json.location item.location

        # json.available @item.available
            # requests_id? 

        if Item.exists?()
        # json.user_id

    end
end