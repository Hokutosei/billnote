class Mybill < ActiveRecord::Base
  attr_accessible :amount, :confirmation, :payment, :title, :user_id, :due_date

  belongs_to :user

end
