class StudentsController < ApplicationController
  
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
    @student || @student = Student.new
  end

  def create
    # Student.create(first_name: params[:student][:first_name], last_name: params[:student][:last_name])
    session[:form_params] = params.inspect
    redirect_to new_student_path
  end

end
