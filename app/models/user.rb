class User < ApplicationRecord
  validates :name, presence: true
  #validates(:name, presence: true)と同等
  validates :email, presence: true
end
