class User < ActiveRecord::Base
  attr_accessible :firstname, :lastname, :password, :email, :password_confirmation, :field, :user_type

  validates :firstname, presence: true
  validates :lastname, presence: true
  validates :email, presence: true
  validates :field, presence: true
  validates :user_type, presence: true

  belongs_to :member, :polymorphic => true

  has_secure_password


end
