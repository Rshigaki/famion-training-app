class Question < ApplicationRecord
  belongs_to :category
  belongs_to :phase
  has_many :answer_options
  has_one :answer
end
