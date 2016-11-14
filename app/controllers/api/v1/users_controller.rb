class Api::V1::UsersController < Api::V1::ApiController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def create
    @user = User.new(user_params)
    if @user.save
      Session.create(user: @user)
      render 'api/v1/users/show'
    else
      render json: { error: @user.errors.full_messages.to_sentence }
    end
  end

  def update
    #code
  end

  def destroy
    #code
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :age, :password)
  end

end
