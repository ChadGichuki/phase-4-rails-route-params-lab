class StudentsController < ApplicationController

  def index
    # if params[:name]
    #   name = params[:name]
    #   students = Student.all.where(first_name: LIKE ? OR last_name: LIKE ?, "%#{name}%", "%#{name}%")
    # else
    #   students = Student.all
    # end
    students = Student.all
    render json: students
  end

  def show
    student = Student.find(params[:id])
    render json: student
  end

end
