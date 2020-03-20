class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :validatable
  belongs_to :family, optional: true
  
  def update_family_token
    update(family_token: SecureRandom.hex(16))
  end
  
  def update_confirmation_number
    update(confirmation_number: rand(100000..999999))
  end
end
