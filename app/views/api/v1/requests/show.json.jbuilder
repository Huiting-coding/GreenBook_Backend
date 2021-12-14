json.requests do
  json.array! @requests do |request|
    json.extract! request, :id
  end
end
