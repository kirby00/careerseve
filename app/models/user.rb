class User < ActiveRecord::Base
  attr_accessible :firstname, :lastname, :password, :email, :password_confirmation, :field

  belongs_to :member, :polymorphic => true

  has_secure_password


end
