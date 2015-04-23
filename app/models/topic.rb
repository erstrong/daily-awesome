class Topic < ActiveRecord::Base
  has_many :entries

  validates :category, :inclusion => { :in => ['Writing','Picture','Video','Audio','Activity']}
end
