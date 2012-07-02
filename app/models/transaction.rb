class Transaction < ActiveRecord::Base
  attr_accessible :amount, :receiver_id, :user_id
end
