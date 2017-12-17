class UsersController < ApplicationController
  def index
    @users = User.all
  end
  
  def new
    @user = User.new
  end
  
  def create
    @user=User.new(user_params)
    # 保存が成功したかどうかで条件分岐をしてください
    if @user.save
      flash[:notice] = "ユーザー登録が完了しました"
      redirect_to("/")
    else
      render("users/new")
    end
  end
  
  def show
    @user = User.find_by(id:params[:id])
    @post = Post.find_by(id:params[:id])
  end
  
  private
  def user_params
    params.require(:user).permit(:name, :email, :image)
  end
end
