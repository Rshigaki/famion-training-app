class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :validatable
  belongs_to :family, optional: true
  has_many :answers
  
  def update_invitation_token
    update(invitation_token: SecureRandom.hex(16))
  end
  
  def update_confirmation_number
    update(confirmation_number: rand(100000..999999))
  end
  
  def create_family
    update(family: Family.create(name: 'test_family'))
  end
end
