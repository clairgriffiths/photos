require 'flickr'

class PhotosController < ApplicationController
  
  def index
   Flickr.login_to_flickr
   @info = flickr.photos.getInfo(:photo_id => "26297297126")
   @url = "http://farm#{@info["farm"]}.staticflickr.com/#{@info["server"]}/#{@info["id"]}_#{@info["secret"]}.jpg"
  end
  
end
