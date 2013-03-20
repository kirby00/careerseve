class AdvisorsController < ApplicationController

 def index 
  	@advisors = Advisor.all
 end

  def create
	@advisor = Advisor.new(params[:advisor])
	if @advisor.save
		redirect_to @advisor
	end
  end

  def show
    @advisor = Advisor.find_by_id(params[:id])
  end

  def edit
  	@advisor = Advisor.find_by_id(params[:id])
  end

  def update
  	@advisor = Advisor.find_by_id(params[:id])
  	if @advisor.update_attributes(params[:advisor])
  		flash[:success] = "Successfully updated"
  		redirect_to @advisor
  	else render 'edit'
  	end
  end

end
