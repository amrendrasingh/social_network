class HomesController < ApplicationController
	 autocomplete :user, :email, :display_value => :funky_method

	def create
     
	end

	def dashboard
		
	end

	def autocomplete_brand_name
		term = params[:term]
	  products = User.where('email LIKE ?', "%#{term}%")
	  render :json => products.map(&:email)
	end
	

end
