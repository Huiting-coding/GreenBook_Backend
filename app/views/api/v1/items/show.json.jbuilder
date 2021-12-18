json.items do
  json.array! @items do |item|
    json.id item.id
    json.name item.name
    json.description item.description
    json.category item.category
    json.location item.lacation
    json.available item.available
    json.user_id item.user_id
    end
  end
end
