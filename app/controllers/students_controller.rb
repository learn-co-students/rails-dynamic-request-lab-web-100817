class StudentsController < ApplicationController
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
  end

  def create
    student = Student.create(students_params)
    redirect_to '/students'
  end

  private

  def students_params
    params.require(:students).permit(:first_name, :last_name)
  end

end
