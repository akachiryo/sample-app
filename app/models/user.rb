class User < ApplicationRecord
  #存在性の検証
  validates :name, presence: true
  #validates(:name, presence: true)と同等
  validates :email, presence: true

  #長さの検証
  validates :name,  presence: true, length: { maximum: 50 }
  validates :email, presence: true, length: { maximum: 255 }
end
