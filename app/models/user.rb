class User < ApplicationRecord
  has_secure_password
  validates :username, presence: true
  belongs_to :role

  scope :role_name, -> { User.find_by(:id).includes(:role) }

end
