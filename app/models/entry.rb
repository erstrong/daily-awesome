class Entry < ActiveRecord::Base
  belongs_to :user
  belongs_to :topic
  has_many :tags, through :tag_maps

  scope :publicly_viewable, -> { where(public: true) }
  scope :privately_viewable, -> { where(public: false) }
  scope :visible_to, -> (user) { user ? all : publicly_viewable }
  
  mount_uploader :image, ImageUploader

end
