module Authenticatable
  extend ActiveSupport::Concern

  included do
    include DeviseTokenAuth::Concerns::SetUserByToken
    before_action :authenticate_user!
  end
end


# before_action = sempre que alguém chamar o controller, vai rolar a ação antes
# que é o authenticate_user, que vai forçar a autenticação do usuário. Todo lugar que
# o Concern tiver incluído ele automaticamente para incluir o Devise e vai executar o
# authenticate_user.
# Para usar, só colocar o include Authenticatable no controller.