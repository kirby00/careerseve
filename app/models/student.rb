class Student < ActiveRecord::Base
  attr_accessible :field, :firstname, :lastname, :password, :email, :password_confirmation

  has_one :user, :as => :member

  has_secure_password

end
