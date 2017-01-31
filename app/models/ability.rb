class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # guest user (not logged in)
    can :manage, User, id: user.id

    if user.admin?
     can :destroy, Comment
     can :manage, Product do |product|
  		product.user_id == user.id
	end
  end

end

