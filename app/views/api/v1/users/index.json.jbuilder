# app/views/api/v1/stories/index.json.jbuilder
json.users do
  json.array! @users do |user|
    json.extract! user, :id, :nickname, :description
  end
end
