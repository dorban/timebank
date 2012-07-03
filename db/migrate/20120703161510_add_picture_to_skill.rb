class AddPictureToSkill < ActiveRecord::Migration
  def change
    add_column :skills, :picture, :sting
  end
end
