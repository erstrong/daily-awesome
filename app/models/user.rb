class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :entries, dependent: :destroy
  has_many :tags, dependent: :destroy

  after_create :set_role
  mount_uploader :avatar, AvatarUploader
  
  def admin?
    self.role == 'admin'
  end

  private

  def set_role
    self.role = "member"
    self.save!
  end


end
