class WelcomeController < ApplicationController

	def index
		@jobs = Job.page(params[:page]).per(5)
	end

end