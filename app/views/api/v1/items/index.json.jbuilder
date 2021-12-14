json.items do
  json.array! @items do |item|
    json.extract! item, :id, :name, :description, :category, :user
  end
end
