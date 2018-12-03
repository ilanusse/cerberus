require "crypto/bcrypt/password"

module Cerberus
  module DatabaseAuthenticatable
    def password=(password)
      @encrypted_password = Crypto::Bcrypt::Password.create(password, cost: 10).to_s
    end
  end
end
