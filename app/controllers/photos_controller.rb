require 'flickr'

class PhotosController < ApplicationController

  def index
   Flickr.login_to_flickr
   #@info = flickr.people.getPhotos(:user_id => "125584460@N03", :per_page => 10)
   # @tag = "Christmas"
    @info = flickr.photos.search(:user_id => "125584460@N03", :tags => "2016")
    @photos = Photo.all
   # @exif = flickr.photos.getInfo(:photo_id => 26074904962)
   # @url = "http://farm2.staticflickr.com/1491/25564773643_a437a35bfd.jpg"
    @photo = flickr.photos.getInfo(photo_id: 32123738416)
  end
  
end
