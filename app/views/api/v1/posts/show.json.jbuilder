json.post do
  json.title @post.title
  json.body @post.body
  json.user do
    json.user_id @post.user_id
    json.first_name @post.user.first_name
    json.last_name @post.user.last_name
  end
end
