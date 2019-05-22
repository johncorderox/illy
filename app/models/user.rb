class User < ApplicationRecord
  belongs_to :location
  has_secure_password

  validates_format_of :username, with: /\A[a-zA-Z0-9_]+\z/, message: "can only consist of letters, numbers and underscore."
  validates :username, uniqueness: {case_sensitive: false}

  validates :email, :password, :username, presence: true
  validates :email, uniqueness: true
end
