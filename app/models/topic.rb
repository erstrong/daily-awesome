class Topic < ActiveRecord::Base
  has_many :entries

  validates :title, length: { minimum: 5 }, presence: true
  validates :prompt, length: { minimum: 10 }, presence: true
  validates :category, :inclusion => { :in => ['Writing','Picture','Video','Audio','Activity']}

  #default_scope {order('display_date DESC')}

  scope :currently_visible, -> { order('display_date DESC').where('display_date < ?', Date.today + 1)}
  scope :upcoming, -> { order('display_date').where('display_date > ?', Date.today)}

  def image?
    self.category == 'Picture'
  end

end
