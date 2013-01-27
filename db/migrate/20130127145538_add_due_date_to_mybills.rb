class AddDueDateToMybills < ActiveRecord::Migration
  def change
    add_column :mybills, :due_date, :datetime
  end
end
