class User < ActiveRecord::Base
  has_secure_password
  has_many :comments
  has_many :posts

  validates :name, presence: true
  validates :email, presence: true,                   
                    format: /\A\S+@\S+\z/,
                    uniqueness: { case_sensitive: false }
end