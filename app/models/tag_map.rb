class TagMap < ActiveRecord::Base
  belongs_to :entry
  belongs_to :tag
end
