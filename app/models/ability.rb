class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # guest user (not logged in)
    can :manage, User, id: user.id
    can :read, Order, user_id: user.id # permissions for every user, even if not logged in
      if user.admin?  # additional permissions for administrators
        can :manage, :all
      end
    end
    
end
