class Skill < ActiveRecord::Base
  attr_accessible :name, :user_id, :description 

  belongs_to :user
end
