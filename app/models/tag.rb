class Tag < ActiveRecord::Base
  belongs_to :user
  has_many :entries, through: :tag_maps

end
