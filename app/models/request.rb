class Request < ActiveRecord::Base
  attr_accessible :category, :description, :name, :picture, :time, :user_id
end
