require "crypto/bcrypt/password"

require "./validatable"

module Cerberus
  module DatabaseAuthenticatable
    include Crypto

    def password=(password : String)
      @new_password = password
      @hashed_password = Bcrypt::Password.create(password, cost: 10).to_s
    end

    def password
      (hash = hashed_password) ? Bcrypt::Password.new(hash) : nil
    end

    def password_changed? : Boolean
      !!new_password
    end

    def authenticate(password : String) : Boolean
      (bcrypt_pass = self.password) ? bcrypt_pass == password : false
    end

    private getter new_password : String?
  end
end
