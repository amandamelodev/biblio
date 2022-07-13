class Ability
  include CanCan::Ability

  def initialize(user)
    if user
      if user.kind == 1
        can :acess, :rails_admin 
        can :read, Livros, status: :active, user_id: user.id
        can :update, user_id: user.id
        can :read, ReservaLivro, user_id: user.id
        can :create, ReservaLivro, user_id: user.id
        can :update, ReservaLivro, user_id: user.id
        can :destroy, ReservaLivro, user_id: user.id
        can :read, HistoricoUser, user: user
      else user.kind == 2
        can :manage, :all
      end
    end
  end
end
