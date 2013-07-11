class Api::UsersController < Api::BaseController
  def create
    @user = User.create! user_params
    render status: :created
  end

  def destroy
    User.find(params[:id]).destroy
    render status: :ok, nothing: true
  end

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id]).update user_params
  end

  private

  def user_params
    params.require(:user).permit(:name, :team_id)
  end
end
