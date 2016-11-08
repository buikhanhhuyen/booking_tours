class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # guest user (not logged in)
    if user.is_admin?
      can :manage, [Category, Place, Tour]
      can [:read, :destroy], [Review, Ckeditor::Picture]
      can :manage, Comment
    else
      can :show, Place
      can :manage, [Review, Ckeditor::Picture], :user_id => user.id
      can :show, Review
      can :manage, Comment, :user_id => user.id
    end
  end
end
