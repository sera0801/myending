class AddDetailsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :kana, :string
    add_column :users, :b_year, :integer
    add_column :users, :b_month, :integer
    add_column :users, :b_day, :integer
    add_column :users, :sex, :integer
    add_column :users, :postalcode1, :integer
    add_column :users, :postalcode2, :integer
    add_column :users, :address, :string
  end
end
