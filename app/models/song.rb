class Song < ApplicationRecord
  belongs_to :user
  has_many :users
  has_many :adds, dependent: :destroy
  has_many :users_added, through: :adds, source: :user 
  validates :artist, :title, presence: true
end
