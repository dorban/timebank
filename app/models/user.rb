class User < ActiveRecord::Base
  attr_accessible :name, :email, :password, :password_confirmation
  acts_as_authentic do |c|
#      c.validate_email_field = false
    end # block optional

end
