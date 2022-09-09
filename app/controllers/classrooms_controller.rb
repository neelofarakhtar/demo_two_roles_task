class ClassroomsController < ApplicationController
 def new
  end
    
  def create
    @user =User.find(params[:user_id])
    @classroom = @user.classrooms.create!(classroom_params)
    @classroom.user_id = current_user.id
    redirect_to user_path(@user)
  end

  private

  def classroom_params
     params.require(:classroom).permit(:class_name, :section, :user_id)
  end
end
