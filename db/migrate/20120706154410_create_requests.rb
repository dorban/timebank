class CreateRequests < ActiveRecord::Migration
  def change
    create_table :requests do |t|
      t.string :category
      t.string :name
      t.string :description
      t.decimal :time
      t.integer :user_id
      t.string :picture

      t.timestamps
    end
  end
end
