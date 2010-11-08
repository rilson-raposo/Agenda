class Ability
  include CanCan::Ability

  def initialize(user)
      if user and user.is? :admin
        can :manage, :all
      else
        can :manage, :all
      end
  end
end