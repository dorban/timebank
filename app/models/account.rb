class Account < ActiveRecord::Base
  attr_accessible :time, :user_id

  belongs_to :user
end
