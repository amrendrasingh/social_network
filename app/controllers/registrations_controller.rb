class RegistrationsController < Devise::RegistrationsController


	def new
		super
	end

	def create
		super
	end



	private
 
  def sign_up_params
    params.require(:user).permit(:name, :phone, :email, :password, :password_confirmation)
  end
 
  def account_update_params
    params.require(:user).permit(:name, :phone, :email, :password, :password_confirmation)
  end
end
