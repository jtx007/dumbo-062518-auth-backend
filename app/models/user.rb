class User < ApplicationRecord

  has_secure_password
  validates :username, uniqueness: { case_sensitive: false }

  def formatted
    { id: self.id, username: self.username}
  end

end
