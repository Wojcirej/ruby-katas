require 'pry'
def password_validation(password)
  password.scan(/^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])[A-Za-z0-9]{6,}$/).any?
end
