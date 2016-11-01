require 'flickr'

class PhotosController < ApplicationController

  def index
   Flickr.login_to_flickr
   #@info = flickr.people.getPhotos(:user_id => "125584460@N03", :per_page => 10)
   # @tag = "Christmas"
  # @info = flickr.photos.search(:user_id => "125584460@N03", :privacy_filter => 5, :per_page => 10, :tags => "Christmas")
    @exif = flickr.photos.getInfo(:photo_id => 25564773643)
    @photos = flickr.people.getInfo(:user_id => "125584460@N03")
  end

end
