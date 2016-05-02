class CreateMessageposts < ActiveRecord::Migration
  def change
    create_table :messageposts do |t|
      t.integer :user_id
      t.string  :dear
      t.text    :text
      t.timestamps null: false
    end
  end
end
