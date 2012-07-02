class Picture < ActiveRecord::Base
  attr_accessible :height, :type, :url, :width, :user_id

  belongs_to :user
end
