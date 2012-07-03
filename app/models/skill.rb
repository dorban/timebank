class Skill < ActiveRecord::Base
  attr_accessible :name, :user_id, :description, :picture

  belongs_to :user
end
