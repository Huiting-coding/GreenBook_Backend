# # app/views/api/v1/stories/index.json.jbuilder
json.users do
  json.array! @users do |user|
    json.id user.id
    json.nickname user.nickname
    json.description user.description
    json.items do
      json.array!(user.items) do |item|
        json.id item.id
        json.name item.name
        json.description item.description
      end
    # json.extract! user, :id, :nickname, :description
    end
  end
end
