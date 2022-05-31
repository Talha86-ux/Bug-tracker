class UsersController < ApplicationController
before_action :action_params, only: [:show, :edit_user, :update_user, :destroy]
  def index
    @users = User.all
    @user = Kaminari.paginate_array(@users).page(params[:page]).per(1)
    @projects = Project.all

  end

  def show
    @users = User.all
    # @user = Project.where("assign_developer like ?", "%#{@user.to_s}%")
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to users_index_path
    else
      render :new
    end
  end


  def new_user
    @user1 = User.new
  end
  def create_user
    @user1 = User.new(user_params)

    if @user1.save
      redirect_to users_index_path, flash: { notice: 'User created!' }
    else
      flash[:notice] = 'cancel'
      render :new_user
    end
  end
  def edit_user
    @user = User.find(params[:id])
  end

  def update_user
    @user = User.find_by_id(user_params[:id])

    if @user.update(user_params)

      redirect_to users_index_path, flash: { notice: 'Updated User' }
    else
      render :edit_user
    end
  end


  def destroy

    User.find(params[:id]).destroy

    redirect_to users_index_path
  end

  def developer_bugs
    @bugs = Bug.where(assign_developer: current_user.id)
  end

  def profile
    @user_profile = User.find_by(id: params[:id])
  end

  private

  def action_params
    @user = User.find_by_id(params[:id])
  end
  def user_params
    params.require(:user).permit(:name, :email, :role, :id, :password, :employement_status)
  end
end
