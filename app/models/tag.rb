class Tag < ActiveRecord::Base
    
    has_many :photos
    has_many :taggings, through: :taggings
end
