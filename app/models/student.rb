class Student < ActiveRecord::Base
  attr_accessible :field, :firstname, :lastname, :password, :email, :password_confirmation

  has_secure_password

  
end
