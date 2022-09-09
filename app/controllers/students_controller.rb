class StudentsController < ApplicationController
  def new  
    # debugger
    @student =Student.new
  end

  def create
    debugger
    @user =User.find(params[:user_id])
    @student =@user.students.create!(student_params)
     if @student.save
     redirect_to students_show_path
   else
     render :new
   end
  end


  def show
    @user =User.find(params[:user_id])
  end

  private
  def student_params
    params.require(:student).permit(:name, :user_id)
  end

end
