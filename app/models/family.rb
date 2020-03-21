class Family < ApplicationRecord
  has_many :users
  def fixed?
    users.count == 2
  end
  
  def phase_valid?
    phase != 'test'
  end
end
