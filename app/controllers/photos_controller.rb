class PhotosController < ApplicationController
	#before_action :authenticate_user!, except: [:index]
	
	def index
		@photos = current_user.photos
	end

	def new
		@photo = current_user.photos.build
	end

	def create
		@photo = current_user.photos.create(photo_params)

		if @photo.save
			redirect_to user_photos_path
		else
			render 'form'
		end
	end

	def edit
		@photo = current_user.photos.find(params[:id])
	end

	def update
		@photo =current_user.photos.find(params[:id])

		if @photo.update(cost_params)
			link_to user_photos_path
		else
			render 'edit'
		end
	end

	private
	def photo_params
		params.require(:photo).permit(:public, :url, :caption)
	end

end