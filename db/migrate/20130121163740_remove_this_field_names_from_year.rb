class RemoveThisFieldNamesFromYear < ActiveRecord::Migration
  def up
    remove_column :years, :mybill_id
    remove_column :years, :mydebt_id
    remove_column :years, :year
  end

  def down
    add_column :years, :year, :string
    add_column :years, :mydebt_id, :integer
    add_column :years, :mybill_id, :integer
  end
end
