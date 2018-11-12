class User < ApplicationRecord
  has_secure_password
  validates :username, presence: true, uniqueness: true
  belongs_to :role

  has_one :location

  scope :role_name, -> { User.find_by(:id).includes(:role) }

end
