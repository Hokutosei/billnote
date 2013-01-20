class CreateMonths < ActiveRecord::Migration
  def change
    create_table :months do |t|
      t.string :year
      t.integer :user_id
      t.integer :mydebt_id
      t.integer :mybill_id
      t.integer :year_id

      t.timestamps
    end
  end
end
