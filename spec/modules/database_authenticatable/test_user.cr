class User
  property encrypted_password : String = ""

  cerberus :database_authenticatable
end
