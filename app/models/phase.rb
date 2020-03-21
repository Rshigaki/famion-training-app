class Phase < ApplicationRecord
  has_many :questions
  has_many :families
end
