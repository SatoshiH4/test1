class PostsController < ApplicationController
  def index
    @posts= Post.all.order(created_at: :desc)
  end
  
  def show
    @post = Post.find_by(id:params[:id])
    @user = @post.user
    @chat=Chat.new(chat:params[:chat])
    @chat.save
    @chats=Chat.all.order(created_at: :desc)
  end
  
  def new
    @post = Post.new
  end 
  
  def create
    user = User.find(1)
    @post = user.posts.build(post_params)
  
    if @post.save
      redirect_to posts_path and return
    end
    
    render :new
  end
  
  def contact
  end
  
  def contact_create
    redirect_to("/posts/contact")
  end

  private
  def post_params
    params.require(:post).permit(:plan_name, :content, :image)
  end

end

