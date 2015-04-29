class Entry < ActiveRecord::Base
  belongs_to :user
  belongs_to :topic

  scope :publicly_viewable, -> { where(public: true) }
  scope :privately_viewable, -> { where(public: false) }
  scope :visible_to, -> (user) { user ? all : publicly_viewable }
  
end
