class Tag < ActiveRecord::Base
  # Tagging model based on http://railscasts.com/episodes/382-tagging?view=asciicast
  belongs_to :user
  has_many :tag_maps
  has_many :entries, through: :tag_maps

end
