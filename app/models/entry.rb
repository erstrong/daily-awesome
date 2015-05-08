class Entry < ActiveRecord::Base
  belongs_to :user
  belongs_to :topic
  has_many :tag_maps
  has_many :tags, through: :tag_maps

  scope :publicly_viewable, -> { where(public: true) }
  scope :privately_viewable, -> { where(public: false) }
  scope :visible_to, -> (user) { user ? all : publicly_viewable }
  
  mount_uploader :image, ImageUploader

  def self.tagged_with(name)
    Tag.find_by_name!(name).entries
  end

  def self.tag_counts
    Tag.select("tags.id, tags.name,count(tag_maps.tag_id) as count").
    joins(:tag_maps).group("tag_maps.tag_id, tags.id, tags.name")
  end

  def tag_list
    tags.map(&:name).join(", ")
  end

  def tag_list=(names)
    self.tags = names.split(",").map do |n|
      Tag.where(name: n.strip).first_or_create!
    end
  end
end
