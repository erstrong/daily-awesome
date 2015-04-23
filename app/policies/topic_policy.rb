class TopicPolicy
  attr_reader :user, :record
  
  def index?
    true
  end

  def show?
    scope.where(:id => record.id).exists?
  end

  def create?
    user.present? && user.admin?
  end

  def new?
    create?
  end

  def update?
    user.present? && user.admin?
  end

  def edit?
    update?
  end

  def destroy?
    user.present? && user.admin?
  end
end
