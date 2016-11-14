json.array! @posts do |post|
  json.title post.title
  json.body post.body
  json.user_id post.user_id
end
