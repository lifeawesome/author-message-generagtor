require "s3_uploader"

class ImagesController < ApplicationController
  skip_before_filter :verify_authenticity_token

	def create
    image = params[:image]
    url = S3Uploader.upload image.original_filename, image.read
    render json: {url: url}
	end
end
