class StudentsController < ApplicationController

  def index 
  	@students = Student.all
    @students_count = Student.count  	  
  end

  def create
	@student = Student.new
	@student.save
  end

  def show
    @student = Student.find(params[:id])
  end

end


