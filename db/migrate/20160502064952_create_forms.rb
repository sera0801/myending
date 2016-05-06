class CreateForms < ActiveRecord::Migration
  def change
    create_table :forms do |t|
      t.integer  :q1
      t.text     :q1_d
      t.integer  :q2
      t.text     :q2_d
      t.integer  :q3
      t.text     :q3_d
      t.integer  :q4
      t.text     :q4_d
      t.integer  :q5
      t.text     :q5_d
      t.string   :moshu_name
      t.string   :moshu_kana
      t.integer  :moshu_number
      t.string   :aisatsu_name
      t.string   :aisatsu_kana
      t.integer  :aisatsu_number
      t.integer  :q8
      t.text     :q8_d
      t.integer  :q9
      t.text     :q9_d
      t.integer  :q10
      t.text     :q10_d
      t.integer  :q11
      t.text     :q11_d
      t.integer  :q12
      t.text     :q12_d
      t.integer  :q13
      t.text     :q13_d
      t.text     :q14_d
      t.integer  :q15
      t.text     :q15_d
      t.integer  :q16
      t.text     :q16_d
      t.integer  :q17
      t.text     :q17_d
      t.integer  :q18
      t.text     :q18_d
      t.integer  :q19
      t.text     :q19_d
      t.integer  :q20
      t.text     :q20_d

      t.integer  :user_id

      t.timestamps null: false
    end
  end
end
