class SessionsController < ApplicationController
  def new

  end

  def create
  	user = User.find_by(name: params[:session][:name].downcase)
  	if user && user = params[:session][:name]
  	
  	else
  	render 'new'
  	end
  end

end
