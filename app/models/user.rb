class User < ActiveRecord::Base
  has_many :lines, dependent: :destroy
  has_secure_password
  validates :email, presence: true, uniqueness: true
  validates :name, presence: true, uniqueness: true
  validates :skill, presence: true
  validates :location, presence: true
end
