class Api::V1::PostsController < Api::V1::ApiController
  before_action :set_user, only: [:create, :update, :destroy]

  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def create
    @post = @user.posts.new(posts_params)
    if @post.save
      render 'api/v1/posts/show'
    else
      render json: { error: "#{@post.errors.full_messages.to_sentence}"}, status: :unprocessable_entity
    end
  end

  def update
    #code
  end

  def destroy
    #code
  end


  private

  def posts_params
    params.require(:post).permit(:title, :body)
  end

  def set_user
    if params[:token]
      if Session.where(token: params[:token]).first
        @user = Session.find_by(token: params['token']).user
      else
        render json: {error: 'token no encontrado / usuario no existe'}, status: :not_found
      end
    else
      errors('token is missing', 401)
    end
  end
end
