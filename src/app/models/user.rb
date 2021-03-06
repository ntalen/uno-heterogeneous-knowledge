class User < ApplicationRecord
  authenticates_with_sorcery!

  validates :password, length: { minimum: 3 }
  validates :password, confirmation: true
  validates :email, uniqueness: true
  validates :email, uniqueness: true, email_format: { message: 'has invalid format' }

  enum role: {
    student: 0,
    teacher: 1,
    admin: 2
  }

  def role?(role_name)
    role == role_name
  end
end
