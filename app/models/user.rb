class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  # Add a validation for the username
  validates :username, presence: true, uniqueness: true

  has_many :discussions, dependent: :destroy
end
