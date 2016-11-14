json.(@user, :id, :first_name, :last_name, :age)
json.token @user.session.token
