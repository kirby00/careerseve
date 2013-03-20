class Advisor < ActiveRecord::Base
    attr_accessible :field, :firstname, :lastname, :password, :email, :password_confirmation, :university

  	has_one :user, :as => :member

  	has_secure_password

end
