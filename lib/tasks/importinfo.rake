require 'flickr'
require 'dotenv/tasks'
include Flickr

task :importphotos => :environment do |t, args|
  
  Flickr.login_to_flickr
    
  photos = flickr.photos.search(:user_id => "125584460@N03", :tags => "2016")
      
  photos.each do |p|
    Photo.create(farm_id: p.farm, server_id: p.server, flickrphoto_id: p.id, secret: p.secret)
  end
 
  
end  

task :importtags => :environment do |t, args|
  
  Flickr.login_to_flickr
     #What arguments to pass??
  Photo.all.each do |photo|
    flickr_photo = flickr.photos.getInfo(photo_id: photo.flickrphoto_id)
    
    flickr_photo["tags"].each do |t|
    
    my_tag = Tag.find_or_create_by(name: t["raw"])
    
    photo.tags << my_tag
      
    end
  end
end  
 
task :importlocation => :environment do |t, args|
  
  Flickr.login_to_flickr
     #What arguments to pass??
  Photo.all.each do |photo|
    flickr_photo = flickr.photos.getInfo(photo_id: photo.flickrphoto_id)
    unless flickr_photo["location"].nil?
      photo.update_attributes(latitude: flickr_photo["location"]["latitude"], longitude: flickr_photo["location"]["longitude"])
    end
    p photo.id
  end
  
end  