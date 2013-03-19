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

end
