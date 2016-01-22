class PhotosController < ApplicationController

	def create
		@place = Place.find(params[:place_id])
		@place.photos.create(photo_params)
		redirect_to place_path(@place)
	end 

	def destroy 
		photo = Photo.find(params[:id])
		photo.destroy
		place = Place.find(params[:place_id])
		redirect_to place_path(place)
	end 

	private

	def photo_params
		params.require(:photo).permit(:picture, :caption)
	end

	
end


