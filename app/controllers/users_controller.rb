class UsersController < ApplicationController

	def new
		@user = User.new
	end

	def create
		@user = User.new(user_params)
	  if @user.save
	    redirect_to root_path, notice: "Account created."
	  else
	    render "user"
	  end
	end

	private
 # Never trust parameters from the scary internet, only allow the white list through.
  def user_params
    params.require(:user).permit(:first_name, :last_name, :e_mail, :password, :password_confirmation)
  end

end
