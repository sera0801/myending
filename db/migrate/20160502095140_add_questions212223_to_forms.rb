class AddQuestions212223ToForms < ActiveRecord::Migration
  def change
    add_column :forms, :q21, :integer
    add_column :forms, :q21_d, :text
    add_column :forms, :q22, :integer
    add_column :forms, :q22_d, :text
    add_column :forms, :requests, :text
  end
end
