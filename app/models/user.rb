class User < ActiveRecord::Base
  attr_accessible :name, :email, :password, :password_confirmation
  acts_as_authentic do |c|
#      c.validate_email_field = false
    end # block optional

  has_many :pictures, :dependent => :destroy
  has_one :account, :dependent => :destroy
  has_many :skills, :dependent => :destroy
end
