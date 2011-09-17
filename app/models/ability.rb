class Ability
  include CanCan::Ability
  
  def initialize(user)
    user ||= User.new
    
    cannot :manage, :all
    
    can [:create, :read], Comedian
    can [:update, :destroy], Comedian, :user_id => user.id
    
    can :read, Tour
    can [:create, :update, :destroy], Tour do |tour|
      tour.comedian.user == user
    end
    
    can :read, Gig
    can [:create, :update, :destroy], Gig do |gig|
      gig.tour.comedian.user == user
    end
    
    can [:create, :read], Video
    can [:update, :destroy], Video, :user_id => user.id 
  end
end
