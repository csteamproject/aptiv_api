class User < ApplicationRecord
  has_secure_password
  validates :username, presence: true, uniqueness: true
  belongs_to :role
  belongs_to :location

  scope :role_name, -> { User.find_by(:id).includes(:role) }

  def by_location(location_id)
    User.all.where("location_id = #{location_id}")
  end

end


