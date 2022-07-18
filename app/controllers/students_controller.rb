class StudentsController < ApplicationController

  def index
    students = 
    if params[:name]
      Student.by_name(params[:name])
    else
      Student.all
    render json: students
  end

  def show
    students = Student.find_by(id: params[:id])
    render json: students
  end

end
