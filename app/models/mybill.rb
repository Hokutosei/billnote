class Mybill < ActiveRecord::Base
  attr_accessible :amount, :confirmation, :payment, :title, :user_id

  belongs_to :user

end
