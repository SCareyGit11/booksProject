class User < ApplicationRecord
  has_secure_password

  EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]+)\z/i
  has_many :books
  has_many :reads
  has_many :books_read, through: :reads, source: :book
  has_many :currents
  has_many :books_current, through: :currents, source: :book
  has_many :interesteds
  has_many :books_interested, through: :interesteds, source: :book
  has_many :comments
  has_many :books_commented, through: :comments, source: :book
  has_many :likes
  has_many :books_liked, through: :likes, source: :book

  validates :first_name,  presence:true, length: {in: 2..20}
  validates :last_name,  presence:true, length: {in: 2..20}
  validates :email, presence: true, uniqueness: true,format: {with: EMAIL_REGEX}
  validates :email, uniqueness: { case_sensitive: false }
  validates :password, :presence => true
  validates :password,length: { minimum: 8 }
  
 

end
