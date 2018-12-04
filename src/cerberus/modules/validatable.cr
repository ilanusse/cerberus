module Cerberus
  module Validatable
    # TODO: Add ORM dependent validations

    def valid_password_size?
      (pass = new_password) ? pass.size >= 8 : false
    end
  end
end
