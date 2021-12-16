json.items do
  json.array! @user.items do |item|
    json.extract! item, :id, :name, :description
  end
end

  if @user == current_user
    json.requests do
      json.array! @user.requests do |request|
      json.extract! request, :id, :item_id, :user_id
    end
  end

  end
