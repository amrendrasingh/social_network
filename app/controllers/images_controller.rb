class ImagesController < ApplicationController

  def new
    @user = User.new
    5.times do
      im = @user.images.build
  	end
  end

  def create
  	images = params["user"]["images_attributes"]
  	  images.each_with_index do |image, idx|
        current_user.images.create(photo: image[1]['photo'].tempfile)
      end
    redirect_to '/dashboard'
  end

  def show
    @images = current_user.images
  end



	private

	def image_upload_params
    params.require(:image).permit(:user, :photo_file_name, :photo_content_type, :photo_file_size, :photo_updated_at)
  end

end
