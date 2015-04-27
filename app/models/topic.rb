class Topic < ActiveRecord::Base
  has_many :entries

  validates :title, length: { minimum: 5 }, presence: true
  validates :prompt, length: { minimum: 10 }, presence: true
  validates :category, :inclusion => { :in => ['Writing','Picture','Video','Audio','Activity']}
end
