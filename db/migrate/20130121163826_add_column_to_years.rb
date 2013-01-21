class AddColumnToYears < ActiveRecord::Migration
  def change
    add_column :years, :year_name, :string
  end
end
