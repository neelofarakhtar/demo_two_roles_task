class SubjectsController < ApplicationController
  def new
  end

  def create
    # debugger
    @user =User.find(params[:subject][:user_id])
    @subject = @user.subjects.create!(subject_params)
    redirect_to  subject_path(@user)
  end

  def show
    # debugger
    @user =User.find(params[:id])
  end


  private
  def subject_params
    params.require(:subject).permit(:name, :description, :user_id,)
  end
end
