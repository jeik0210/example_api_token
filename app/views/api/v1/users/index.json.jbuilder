json.array! @users do |user|
  json.(user, :id, :first_name, :last_name, :age)
  json.token user.session.token
end
