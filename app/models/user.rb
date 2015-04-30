class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :entries

  after_create :set_role
  
  def admin?
    role == 'admin'
  end

  private

  def set_role
    self.role = "member"
    self.save!
  end


end
