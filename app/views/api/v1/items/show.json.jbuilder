json.request do
  json.extract! @item, :name, :description, :location, :available
end
