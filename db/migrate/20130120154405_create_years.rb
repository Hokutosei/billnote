class CreateYears < ActiveRecord::Migration
  def change
    create_table :years do |t|
      t.string :year
      t.integer :user_id
      t.integer :mybill_id
      t.integer :mydebt_id

      t.timestamps
    end
  end
end
