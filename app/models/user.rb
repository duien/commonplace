class User < ActiveRecord::Base
  validates :email,
    presence: true,
    uniqueness: { allow_blank: true },
    format: { with: /\A[^@\s]+@.+\.[^\s]{2,}\z/, message: 'is not a valid email address', allow_blank: true }
  validates :username,
    presence: true,
    uniqueness: { allow_blank: true },
    format: { with: /\A[-a-z\d]+\z/, message: 'must contain only letters, numbers and dashes', allow_blank: true }

  has_secure_password
  validates :password,
    length: 8..72,
    allow_nil: true # the `password` attribute won't be populated usually
end
