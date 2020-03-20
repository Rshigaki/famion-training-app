class Family < ApplicationRecord
  has_many :users
  def fixed?
    users.count == 2
  end
end
