class CreateMybills < ActiveRecord::Migration
  def change
    create_table :mybills do |t|
      t.string :title
      t.integer :amount
      t.integer :payment
      t.integer :user_id
      t.string :confirmation

      t.timestamps
    end
  end
end
