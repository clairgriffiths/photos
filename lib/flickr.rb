require 'flickraw'

module Flickr
  
  def self.login_to_flickr
    FlickRaw.api_key=ENV["FLICKRAW_API_KEY"]
    FlickRaw.shared_secret=ENV["FLICKRAW_SHARED_SECRET"]

    flickr.access_token = ENV["FLICKR_ACCESS_TOKEN"]
    flickr.access_secret = ENV["FLICKR_ACCESS_SECRET"]

    # From here you are logged:
    login = flickr.test.login
   # puts "You are now authenticated as #{login.username}"

    

  end
end