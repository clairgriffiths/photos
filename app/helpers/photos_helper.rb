module PhotosHelper
  
  def get_photos(tag)
    flickr.photos.search(:user_id => "125584460@N03", :privacy_filter => 5, :per_page => 10, :tags => tag)
  end
  
  def get_info(id)
    flickr.photos.getInfo(:photo_id => id)
  end
  
end
