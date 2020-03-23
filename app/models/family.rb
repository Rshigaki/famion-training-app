class Family < ApplicationRecord
  has_many :users
  belongs_to :phase, optional: true
  def fixed?
    users.count == 2
  end
  
  def phase_present?
    phase != 'test'
  end
end
