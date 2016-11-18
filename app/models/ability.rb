class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new role: nil # guest user (not logged in)
    if user.admin?
      can :manage, [Category, Place, Tour]
      can [:read, :destroy], [Review, Ckeditor::Picture]
      can :manage, Comment
      can :manage, Booking
      can :manage, User
    elsif user.member?
      can :manage, Comment, :user_id => user.id
      can [:show, :destroy], User, :id => user.id
      can :manage, Booking, :user_id => user.id
      can :manage, [Review, Ckeditor::Picture], :user_id => user.id
      can [:show, :index], Place
      can [:show, :index, :search], Tour
      can :show, Review
    else
      can [:show, :index], Place
      can [:show, :index, :search], Tour
      can :show, Review
    end
  end
end
