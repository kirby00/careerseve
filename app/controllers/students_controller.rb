class StudentsController < ApplicationController

  def index 
  	@students = Student.all
    @students_count = Student.count  	  
  end

  def new
    @student = Student.new(params[:student])
  end

  def create
	  @student = Student.new(params[:student])
  	if @student.save
  		redirect_to @student
  	end
  end

  def show
    @student = Student.find_by_id(params[:id])
  end

  def edit
  	@student = Student.find_by_id(params[:id])
  end
  
end


