class Book < ApplicationRecord
  belongs_to :user
  has_many :reads
  has_many :users_read, through: :reads, source: :user
  has_many :currents
  has_many :users_current, through: :currents, source: :user
  has_many :interesteds
  has_many :users_interested, through: :interested, source: :user
  has_many :comments
  has_many :users_commented, through: :comments, source: :user
  has_many :likes
  has_many :users_liked, through: :likes, source: :user

  validates :title, length: {in: 2..20}
  validates :author, length: {in: 2..20}
end
