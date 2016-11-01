class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # guest user (not logged in)
    if user.is_admin?
      can :manage, [Category, Place, Tour]
      can :manage, [Review, Ckeditor::Picture]
    else
      can :manage, [Review, Ckeditor::Picture], :user_id => user.id
      can :show, Place
    end
  end
end
