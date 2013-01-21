class RemoveMyBillIdFromMont < ActiveRecord::Migration
  def up
    remove_column :months, :mybill_id
    remove_column :months, :mydebt_id
  end

  def down
    add_column :months, :mydebt_id, :integer
    add_column :months, :mybill_id, :integer
  end
end
