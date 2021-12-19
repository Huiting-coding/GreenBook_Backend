json.users do
    json.id @user.id
    json.nickname @user.nickname
    json.description @user.description
    json.items do
      json.array! @user.items do |item|
        json.id item.id
        json.name item.name
        json.description item.description
      end
      if @user == current_user
        json.requests do
          json.array! user.requests do |request|
          json.extract! request, :id, :item_id, :user_id
          end
        end
      end
  end
end


# json.user do
#     json.array! @users do |user|
#       json.extract! user, :id, :nickname, :description
#       # json.id user.id
#       # json.nickname user.nickname
#       # json.description user.description
#       json.array! @user.items do |item|
#         json.extract! item, :id, :name, :description
#       end

#     if @user == current_user
#       json.requests do
#         json.array! @user.requests do |request|
#         json.extract! request, :id, :item_id, :user_id
#         end
#       end
#     end
#   end
# end
