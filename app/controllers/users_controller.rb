class UsersController < ApplicationController
  before_action :authenticate_user!, except: [:welcome]
  
  def index
     @users = User.all
  end

  def welcome
    @user = User.find(params[:user_id])
  end
  
  def subject_edit
    @user = User.find(params[:user_id])
  end


  def new
    @user = User.new
  end
  def create
    @user = User.new(:email, :password,:role)

    if @user.save
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
   @user = User.find(params[:id])
  end

  def accept
    @user = User.find(params[:user_id])
    if @user.accepted!
      AdminMailer.new_user_received_email(@user).deliver
      redirect_to root_path, notice: 'user accepted'
    else
      redirect_to @user, notice: 'user could not be accepted - please try again' 
    end
  end


  def reject
   @user = User.find(params[:user_id])
    if @user.rejected!
      AdminMailer.new_user_received_email(@user).deliver
      redirect_to root_path, notice: 'user rejected'
    else
      redirect_to @user, notice: 'user could not be rejected - please try again' 
    end
  end
end
