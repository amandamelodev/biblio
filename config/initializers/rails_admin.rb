RailsAdmin.config do |config|

  config.model 'User' do
    list do
      field :nome
      field :email
      field :telefone
      field :kind
      field :status
    end
  end
  config.model 'Livro' do
    list do
      field :titulo
      field :autores
      field :editora
      field :descricao
      field :banner
    end
  end

  config.model 'Reserva_livro' do
    list do
      field :user
      field :livro
      field :status
      field :chekin
      field :chekout
    end
  end


  config.asset_source = :sprockets

 config.authenticate_with do
 warden.authenticate! scope: :user
  end
 config.current_user_method(&:current_user)

  ## == CancanCan ==
  config.authorize_with :cancancan

  ## == Pundit ==
  # config.authorize_with :pundit

  ## == PaperTrail ==
  # config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # PaperTrail >= 3.0.0

  ### More at https://github.com/railsadminteam/rails_admin/wiki/Base-configuration

  ## == Gravatar integration ==
  ## To disable Gravatar integration in Navigation Bar set to false
  # config.show_gravatar = true

  config.actions do
    dashboard                     # mandatory
    index                         # mandatory
    new
    export
    bulk_delete
    show
    edit
    delete

    ## With an audit adapter, you can add:
    # history_index
    # history_show
  end
end
